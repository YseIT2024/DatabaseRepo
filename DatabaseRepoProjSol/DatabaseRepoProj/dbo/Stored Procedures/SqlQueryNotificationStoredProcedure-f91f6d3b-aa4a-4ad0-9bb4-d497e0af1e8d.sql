﻿CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-f91f6d3b-aa4a-4ad0-9bb4-d497e0af1e8d] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-f91f6d3b-aa4a-4ad0-9bb4-d497e0af1e8d]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-f91f6d3b-aa4a-4ad0-9bb4-d497e0af1e8d] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-f91f6d3b-aa4a-4ad0-9bb4-d497e0af1e8d') > 0)   DROP SERVICE [SqlQueryNotificationService-f91f6d3b-aa4a-4ad0-9bb4-d497e0af1e8d]; if (OBJECT_ID('SqlQueryNotificationService-f91f6d3b-aa4a-4ad0-9bb4-d497e0af1e8d', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-f91f6d3b-aa4a-4ad0-9bb4-d497e0af1e8d]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-f91f6d3b-aa4a-4ad0-9bb4-d497e0af1e8d]; END COMMIT TRANSACTION; END