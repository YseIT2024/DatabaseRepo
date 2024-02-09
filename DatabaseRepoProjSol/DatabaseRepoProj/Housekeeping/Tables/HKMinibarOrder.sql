﻿CREATE TABLE [Housekeeping].[HKMinibarOrder] (
    [OrderId]              INT             IDENTITY (1, 1) NOT NULL,
    [OrdereDate]           DATETIME        NOT NULL,
    [FolioNumber]          INT             NOT NULL,
    [GuestID]              INT             NULL,
    [RoomNo]               INT             NULL,
    [TotalAmountBeforeTax] DECIMAL (18, 6) NOT NULL,
    [Discount]             DECIMAL (18, 6) NOT NULL,
    [ServiceCharge]        DECIMAL (18, 6) NOT NULL,
    [TaxAmount]            DECIMAL (18, 6) NOT NULL,
    [TotalAmountAfterTax]  DECIMAL (18, 6) NOT NULL,
    [CashPaid]             DECIMAL (18, 6) NOT NULL,
    [PINPaid]              DECIMAL (18, 6) NOT NULL,
    [ReturnAmount]         DECIMAL (18, 6) NOT NULL,
    [OrderStatus]          INT             NOT NULL,
    [PrintStatus]          INT             NOT NULL,
    [Remarks]              VARCHAR (250)   NULL,
    [CreatedBy]            INT             NOT NULL,
    [Createdon]            DATETIME        NOT NULL,
    [ModifiedOn]           DATETIME        NULL,
    [ModifiedBy]           INT             NULL,
    [IsExpress]            BIT             NULL,
    [ItemCount]            INT             NOT NULL,
    [IsActive]             BIT             NOT NULL,
    [ServiceTypeId]        INT             NULL,
    [RoomID]               INT             NULL,
    CONSTRAINT [PK_HKMiniubarOrder] PRIMARY KEY CLUSTERED ([OrderId] ASC) WITH (FILLFACTOR = 90)
);
