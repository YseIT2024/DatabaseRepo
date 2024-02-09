﻿CREATE TABLE [company].[RoomPriceNew] (
    [PriceID]         INT             IDENTITY (1, 1) NOT NULL,
    [ItemID]          INT             NOT NULL,
    [ContractId]      INT             NOT NULL,
    [PriceTypeID]     INT             NOT NULL,
    [LocationID]      INT             NOT NULL,
    [FromDate]        DATE            NOT NULL,
    [CurrencyID]      INT             NOT NULL,
    [BasePrice]       DECIMAL (18, 4) NOT NULL,
    [BasePriceSingle] DECIMAL (18, 4) NULL,
    [Commission]      DECIMAL (12, 2) NULL,
    [Discount]        DECIMAL (12, 2) NULL,
    [AddPax]          DECIMAL (12, 4) NULL,
    [AddChild]        DECIMAL (12, 4) NULL,
    [SalePrice]       DECIMAL (18, 4) NOT NULL,
    [SalePriceSingle] DECIMAL (18, 4) NULL,
    [Remarks]         VARCHAR (200)   NULL,
    [IsOnDemand]      BIT             NULL,
    [IsWeekEnd]       BIT             NULL,
    [Priority]        INT             NULL,
    [CreatedBy]       INT             NULL,
    [CreateDate]      DATETIME        NULL,
    [AddChildSr]      DECIMAL (12, 4) NULL,
    [IsApproved]      TINYINT         NULL,
    [ApprovedBy]      INT             NULL,
    [ApprovedOn]      DATETIME        NULL,
    [IsActive]        BIT             NULL,
    CONSTRAINT [PK_CompanyRoomPriceNew] PRIMARY KEY CLUSTERED ([PriceID] ASC, [ItemID] ASC)
);
