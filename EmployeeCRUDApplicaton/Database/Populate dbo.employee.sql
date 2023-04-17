USE [EmployeeManagementSystem]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 
GO
INSERT [dbo].[Employee] ([EmployeeID], [FullName], [Email], [City], [Age], [IsDeleted], [ModifiedTime], [CreatedTime], [DateOfBirth], [MobileNo]) VALUES (16, N'Sahil Rajpal', N'sahil@yahoo.com', N'Ulhasnagare East', 23, 0, CAST(N'2023-04-17T10:31:56.140' AS DateTime), CAST(N'2023-04-17T10:29:19.037' AS DateTime), CAST(N'2000-02-10' AS Date), N'9726183721')
GO
INSERT [dbo].[Employee] ([EmployeeID], [FullName], [Email], [City], [Age], [IsDeleted], [ModifiedTime], [CreatedTime], [DateOfBirth], [MobileNo]) VALUES (17, N'Mohit Thorat', N'mohit.thorat777@gmail.com', N'Navi Mumbai', 23, 0, CAST(N'2023-04-17T10:29:35.747' AS DateTime), CAST(N'2023-04-17T10:29:35.747' AS DateTime), CAST(N'2000-02-14' AS Date), N'9619081783')
GO
INSERT [dbo].[Employee] ([EmployeeID], [FullName], [Email], [City], [Age], [IsDeleted], [ModifiedTime], [CreatedTime], [DateOfBirth], [MobileNo]) VALUES (18, N'Anish Vaidya', N'anish@gmail.com', N'Thane', 24, 0, CAST(N'2023-04-17T10:29:55.923' AS DateTime), CAST(N'2023-04-17T10:29:55.923' AS DateTime), CAST(N'2000-05-01' AS Date), N'9619032783')
GO
INSERT [dbo].[Employee] ([EmployeeID], [FullName], [Email], [City], [Age], [IsDeleted], [ModifiedTime], [CreatedTime], [DateOfBirth], [MobileNo]) VALUES (19, N'Vinita Motwani', N'vinit@rediff.com', N'Kalyan', 25, 0, CAST(N'2023-04-17T10:31:41.800' AS DateTime), CAST(N'2023-04-17T10:30:20.920' AS DateTime), CAST(N'2000-09-12' AS Date), N'9529032783')
GO
INSERT [dbo].[Employee] ([EmployeeID], [FullName], [Email], [City], [Age], [IsDeleted], [ModifiedTime], [CreatedTime], [DateOfBirth], [MobileNo]) VALUES (20, N'Somesh Tiwari', N'somesh@ves.ac.in', N'Bhandup', 24, 1, CAST(N'2023-04-17T10:31:26.783' AS DateTime), CAST(N'2023-04-17T10:31:23.633' AS DateTime), CAST(N'1999-01-01' AS Date), N'9825789212')
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
