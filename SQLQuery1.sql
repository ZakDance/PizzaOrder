CREATE TABLE [dbo].[Students] (
    [StudentID]  INT        IDENTITY (1, 1) NOT NULL,
    [FirstName] VARCHAR (50) NULL,
    [SecondName] VARCHAR (50) NULL,
    [DOB] DATETIME NULL,
    CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED ([StudentID] ASC)
);


CREATE TABLE [dbo].[Classes] (
    [ClassID] INT IDENTITY (1, 1) NOT NULL,
    [level] INT NULL,
    [Name] VARCHAR (50) NULL,
    CONSTRAINT [PK_classes] PRIMARY KEY CLUSTERED ([ClassID] ASC) 
);



CREATE TABLE [dbo].[Enrolments] (
    [EnrolmentID] INT IDENTITY (1, 1) NOT NULL,
    [StudentID] INT  NULL,
    [ClassID] INT NULL,
    [DateOfEnrolment] DATETIME NULL,
    [TuitionPaid] BIT NULL,
    CONSTRAINT [PK_Enrolments] PRIMARY KEY CLUSTERED ([EnrolmentID] ASC),
    CONSTRAINT [FK_Enrolment_ToClass] FOREIGN KEY ([ClassID]) REFERENCES [dbo].[Classes] ([ClassID]),
    CONSTRAINT [FK_Enrolment_ToStudent] FOREIGN KEY ([StudentID]) REFERENCES [dbo].[Students] ([StudentID])
);