﻿CREATE TABLE [account].[Receivables] (
    [ReceivableId]       INT             IDENTITY (1, 1) NOT NULL,
    [AccountTypeId]      INT             NULL,
    [SupplierId]         INT             NULL,
    [ProjectId]          INT             NULL,
    [CurrencyId]         INT             NULL,
    [Balance]            DECIMAL (18, 2) NULL,
    [PaymentTypeId]      INT             NULL,
    [InvoiceNo]          NVARCHAR (20)   NULL,
    [SalesOrderNumber]   NVARCHAR (100)  NULL,
    [SalesOrderId]       INT             NULL,
    [TermId]             INT             NULL,
    [DueDate]            DATETIME        NULL,
    [Amount]             DECIMAL (18, 2) NULL,
    [AmountUSD]          DECIMAL (18, 2) NULL,
    [Rate]               DECIMAL (18, 2) NULL,
    [AddedBy]            INT             NULL,
    [AddedDate]          DATETIME        NULL,
    [CompanyId]          INT             NULL,
    [CollectorId]        INT             NULL,
    [TillId]             INT             NULL,
    [LocationId]         INT             NULL,
    [FinanceDate]        DATE            NOT NULL,
    [IsActive]           BIT             NULL,
    [ModifiedBy]         INT             NULL,
    [ModifiedOn]         DATETIME        NULL,
    [AccountNo]          NVARCHAR (20)   NULL,
    [GrossAmount]        DECIMAL (18, 2) NULL,
    [TaxAmount]          DECIMAL (18, 2) NULL,
    [Discount]           DECIMAL (18, 2) NULL,
    [OtherCharges]       DECIMAL (18, 2) NULL,
    [NetAmount]          DECIMAL (18, 2) NULL,
    [StatusId]           INT             NULL,
    [ApprovedRejectedBy] INT             NULL,
    [VerifiedBy]         INT             NULL,
    [ApproveRejectedOn]  DATETIME        NULL,
    [RejectReason]       NVARCHAR (500)  NULL,
    [CancelledBy]        INT             NULL,
    [InvoiceNotes]       NVARCHAR (800)  NULL
);
