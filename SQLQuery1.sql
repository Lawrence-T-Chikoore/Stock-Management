CREATE TABLE [dbo].[Payment] (
    [id]                         INT            IDENTITY (1, 1) NOT NULL,
    [cust_payID]                 NCHAR (25)     NOT NULL,
    [custID]                     NCHAR (25)     NULL,
    [date]                       NCHAR (10)     NULL,
    [cust_pay_mode]              NCHAR (4)      NULL,
    [cust_bankname_creditcardno] NVARCHAR (250) NULL,
    [cust_checkno_trnxno]        NCHAR (15)     NULL,
    [cust_amount]                NCHAR (10)     NULL,
    CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED ([cust_payID] ASC),
    CONSTRAINT [FK_Payment_Customer] FOREIGN KEY ([custID]) REFERENCES [dbo].[Customer] ([custID]),
    CONSTRAINT [FK_Payment_Payment Mode] FOREIGN KEY ([cust_pay_mode]) REFERENCES [dbo].[PaymentMode] ([paymentID])
);


