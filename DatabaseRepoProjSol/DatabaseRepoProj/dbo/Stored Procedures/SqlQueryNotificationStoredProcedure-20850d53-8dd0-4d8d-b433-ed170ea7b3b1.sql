﻿CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-20850d53-8dd0-4d8d-b433-ed170ea7b3b1] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-20850d53-8dd0-4d8d-b433-ed170ea7b3b1]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-20850d53-8dd0-4d8d-b433-ed170ea7b3b1] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-20850d53-8dd0-4d8d-b433-ed170ea7b3b1') > 0)   DROP SERVICE [SqlQueryNotificationService-20850d53-8dd0-4d8d-b433-ed170ea7b3b1]; if (OBJECT_ID('SqlQueryNotificationService-20850d53-8dd0-4d8d-b433-ed170ea7b3b1', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-20850d53-8dd0-4d8d-b433-ed170ea7b3b1]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-20850d53-8dd0-4d8d-b433-ed170ea7b3b1]; END COMMIT TRANSACTION; END