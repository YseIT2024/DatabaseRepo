﻿CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-17dfdc02-b471-499a-acb0-1591b2bf6af5] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-17dfdc02-b471-499a-acb0-1591b2bf6af5]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-17dfdc02-b471-499a-acb0-1591b2bf6af5] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-17dfdc02-b471-499a-acb0-1591b2bf6af5') > 0)   DROP SERVICE [SqlQueryNotificationService-17dfdc02-b471-499a-acb0-1591b2bf6af5]; if (OBJECT_ID('SqlQueryNotificationService-17dfdc02-b471-499a-acb0-1591b2bf6af5', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-17dfdc02-b471-499a-acb0-1591b2bf6af5]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-17dfdc02-b471-499a-acb0-1591b2bf6af5]; END COMMIT TRANSACTION; END