USE [system_ventas]
GO
/****** Object:  Table [dbo].[bodega]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bodega](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NULL,
	[Codigo] [varchar](50) NULL,
	[Existencia] [int] NULL,
	[Dia] [int] NULL,
	[Mes] [varchar](50) NULL,
	[Year] [varchar](50) NULL,
	[Fecha] [varchar](50) NULL,
 CONSTRAINT [PK_bodega] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cajas]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cajas](
	[IdCaja] [int] IDENTITY(1,1) NOT NULL,
	[Caja] [int] NULL,
	[Estado] [tinyint] NULL,
 CONSTRAINT [PK_cajas] PRIMARY KEY CLUSTERED 
(
	[IdCaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cajas_ingresos]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cajas_ingresos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Caja] [int] NULL,
	[Ingreso] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Dia] [int] NULL,
	[Mes] [varchar](50) NULL,
	[Year] [int] NULL,
	[Fecha] [varchar](50) NULL,
	[IdUsuario] [int] NULL,
 CONSTRAINT [PK_cajas_ingresos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cajas_registros]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cajas_registros](
	[IdCajaTempo] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Usuario] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
	[IdCaja] [int] NULL,
	[Caja] [int] NULL,
	[Estado] [tinyint] NULL,
	[Hora] [varchar](50) NULL,
	[Fecha] [varchar](50) NULL,
 CONSTRAINT [PK_cajas_registros] PRIMARY KEY CLUSTERED 
(
	[IdCajaTempo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IdCat] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [varchar](50) NULL,
	[IdDpto] [int] NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[IdCat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[ID] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[compras]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compras](
	[IdCompra] [int] IDENTITY(1,1) NOT NULL,
	[Producto] [varchar](50) NULL,
	[Cantidad] [int] NULL,
	[Precio] [varchar](50) NULL,
	[Importe] [varchar](50) NULL,
	[IdProveedor] [int] NULL,
	[Proveedor] [varchar](50) NULL,
	[IdUsuario] [int] NULL,
	[Usuario] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
	[Dia] [int] NULL,
	[Mes] [varchar](50) NULL,
	[Year] [int] NULL,
	[Fecha] [varchar](50) NULL,
	[Codigo] [varchar](50) NULL,
 CONSTRAINT [PK_compras] PRIMARY KEY CLUSTERED 
(
	[IdCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[IdDpto] [int] IDENTITY(1,1) NOT NULL,
	[Departamento] [varchar](50) NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[IdDpto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NULL,
	[Producto] [varchar](50) NULL,
	[Precio] [varchar](50) NULL,
	[Descuento] [varchar](50) NULL,
	[Departamento] [varchar](50) NULL,
	[Categoria] [varchar](50) NULL,
	[Compra] [varchar](50) NULL,
	[Year] [varchar](50) NULL,
	[Fecha] [varchar](50) NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[IdProveedor] [int] IDENTITY(1,1) NOT NULL,
	[Proveedor] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Telefono] [nchar](10) NULL,
 CONSTRAINT [PK_proveedores] PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reportes_clientes]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reportes_clientes](
	[IdRegistro] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NULL,
	[SaldoActual] [varchar](50) NULL,
	[FechaActual] [varchar](50) NULL,
	[UltimoPago] [varchar](50) NULL,
	[FechaPago] [varchar](50) NULL,
	[ID] [varchar](50) NULL,
 CONSTRAINT [PK_reportes_clientes] PRIMARY KEY CLUSTERED 
(
	[IdRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reportes_ingresos]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reportes_ingresos](
	[IdIngreso] [int] IDENTITY(1,1) NOT NULL,
	[Admin] [varchar](50) NULL,
	[Caja] [int] NULL,
	[Ingreso] [varchar](50) NULL,
	[Fecha] [varchar](50) NULL,
 CONSTRAINT [PK_reportes_ingresos] PRIMARY KEY CLUSTERED 
(
	[IdIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reportes_proveedores]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reportes_proveedores](
	[IdRegistro] [int] IDENTITY(1,1) NOT NULL,
	[IdProveedor] [varchar](50) NULL,
	[SaldoActual] [varchar](50) NULL,
	[FechaActual] [varchar](50) NULL,
	[UltimoPago] [varchar](50) NULL,
	[FechaPago] [varchar](50) NULL,
 CONSTRAINT [PK_reportes_proveedores] PRIMARY KEY CLUSTERED 
(
	[IdRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[IdRole] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempo_compras]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempo_compras](
	[IdCompra] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Cantidad] [int] NULL,
	[PrecioCompra] [varchar](50) NULL,
	[Importe] [varchar](50) NULL,
 CONSTRAINT [PK_tempo_compras] PRIMARY KEY CLUSTERED 
(
	[IdCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempo_productos]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempo_productos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCompra] [int] NULL,
 CONSTRAINT [PK_tempo_productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempo_ventas]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempo_ventas](
	[IdTempo] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Precio] [varchar](50) NULL,
	[Cantidad] [int] NULL,
	[Importe] [varchar](50) NULL,
	[Caja] [int] NULL,
	[IdUsuario] [int] NULL,
 CONSTRAINT [PK_tempo_ventas] PRIMARY KEY CLUSTERED 
(
	[IdTempo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Usuario] [varchar](50) NULL,
	[Password] [varchar](250) NULL,
	[Role] [varchar](50) NULL,
	[Imagen] [varchar](50) NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 11/03/2019 01:21:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[IdVenta] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Precio] [varchar](50) NULL,
	[Cantidad] [int] NULL,
	[Importe] [varchar](50) NULL,
	[Dia] [int] NULL,
	[Mes] [varchar](50) NULL,
	[Year] [varchar](50) NULL,
	[Fecha] [varchar](50) NULL,
	[Caja] [int] NULL,
	[IdUsuario] [int] NULL,
	[Compra] [varchar](50) NULL,
 CONSTRAINT [PK_ventas] PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bodega] ON 

INSERT [dbo].[bodega] ([Id], [IdProducto], [Codigo], [Existencia], [Dia], [Mes], [Year], [Fecha]) VALUES (1, 1, N'8354816', 22, 30, N'ene.', N'2019', N'30/ene./2019')
INSERT [dbo].[bodega] ([Id], [IdProducto], [Codigo], [Existencia], [Dia], [Mes], [Year], [Fecha]) VALUES (2, 2, N'820916249', 35, 1, N'02', N'2019', N'01/02/2019')
SET IDENTITY_INSERT [dbo].[bodega] OFF
SET IDENTITY_INSERT [dbo].[cajas_ingresos] ON 

INSERT [dbo].[cajas_ingresos] ([Id], [Caja], [Ingreso], [Type], [Dia], [Mes], [Year], [Fecha], [IdUsuario]) VALUES (1, 0, N'$700.00', N'Ventas', 30, N'ene.', 2019, N'30/ene./2019', 1)
INSERT [dbo].[cajas_ingresos] ([Id], [Caja], [Ingreso], [Type], [Dia], [Mes], [Year], [Fecha], [IdUsuario]) VALUES (2, 0, N'$7,000.00', N'Ventas', 9, N'02', 2019, N'09/02/2019', 2)
SET IDENTITY_INSERT [dbo].[cajas_ingresos] OFF
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([IdCat], [Categoria], [IdDpto]) VALUES (1, N'Partes', 1)
SET IDENTITY_INSERT [dbo].[Categorias] OFF
SET IDENTITY_INSERT [dbo].[clientes] ON 

INSERT [dbo].[clientes] ([IdCliente], [ID], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (1, N'2252', N'Alex', N'Pagoada', N'La Ceiba', N'6633252')
INSERT [dbo].[clientes] ([IdCliente], [ID], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (2, N'666', N'Joel', N'Suazo', N'Atlantida', N'2533')
INSERT [dbo].[clientes] ([IdCliente], [ID], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (3, N'566515', N'PDHN', N'Programador', N'Honduras', N'65585225')
SET IDENTITY_INSERT [dbo].[clientes] OFF
SET IDENTITY_INSERT [dbo].[compras] ON 

INSERT [dbo].[compras] ([IdCompra], [Producto], [Cantidad], [Precio], [Importe], [IdProveedor], [Proveedor], [IdUsuario], [Usuario], [Role], [Dia], [Mes], [Year], [Fecha], [Codigo]) VALUES (1, N'Ram', 23, N'$623', N'$14,329.00', 1, N'Alex', 1, N'AJ', N'Admin', 23, N'ene.', 2019, N'23/ene./2019', N'9906874')
INSERT [dbo].[compras] ([IdCompra], [Producto], [Cantidad], [Precio], [Importe], [IdProveedor], [Proveedor], [IdUsuario], [Usuario], [Role], [Dia], [Mes], [Year], [Fecha], [Codigo]) VALUES (2, N'PC', 36, N'$6,666.00', N'$239,976.00', 1, N'Alex', 2, N'pdhn', N'Admin', 26, N'01', 2019, N'26/01/2019', N'506324510')
SET IDENTITY_INSERT [dbo].[compras] OFF
SET IDENTITY_INSERT [dbo].[Departamentos] ON 

INSERT [dbo].[Departamentos] ([IdDpto], [Departamento]) VALUES (1, N'Computadoras')
SET IDENTITY_INSERT [dbo].[Departamentos] OFF
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([IdProducto], [Codigo], [Producto], [Precio], [Descuento], [Departamento], [Categoria], [Compra], [Year], [Fecha]) VALUES (1, N'8354816', N'Ram', N'$700.00', N'%0.00', N'Computadoras', N'Partes', N'9906874', N'2019', N'30/ene./2019')
INSERT [dbo].[productos] ([IdProducto], [Codigo], [Producto], [Precio], [Descuento], [Departamento], [Categoria], [Compra], [Year], [Fecha]) VALUES (2, N'820916249', N'PC', N'$7,000.00', N'%0.00', N'Computadoras', N'Partes', N'506324510', N'2019', N'01/02/2019')
SET IDENTITY_INSERT [dbo].[productos] OFF
SET IDENTITY_INSERT [dbo].[proveedores] ON 

INSERT [dbo].[proveedores] ([IdProveedor], [Proveedor], [Email], [Telefono]) VALUES (1, N'Alex', N'alex@gmail.com', N'65363     ')
SET IDENTITY_INSERT [dbo].[proveedores] OFF
SET IDENTITY_INSERT [dbo].[reportes_clientes] ON 

INSERT [dbo].[reportes_clientes] ([IdRegistro], [IdCliente], [SaldoActual], [FechaActual], [UltimoPago], [FechaPago], [ID]) VALUES (1, 1, N'$0.00', N'Sin fecha', N'$0.00', N'Sin fecha', N'2252')
INSERT [dbo].[reportes_clientes] ([IdRegistro], [IdCliente], [SaldoActual], [FechaActual], [UltimoPago], [FechaPago], [ID]) VALUES (2, 2, N'$0.00', N'Sin fecha', N'$0.00', N'Sin fecha', N'666')
INSERT [dbo].[reportes_clientes] ([IdRegistro], [IdCliente], [SaldoActual], [FechaActual], [UltimoPago], [FechaPago], [ID]) VALUES (3, 3, N'$0.00', N'Sin fecha', N'$0.00', N'Sin fecha', N'566515')
SET IDENTITY_INSERT [dbo].[reportes_clientes] OFF
SET IDENTITY_INSERT [dbo].[reportes_proveedores] ON 

INSERT [dbo].[reportes_proveedores] ([IdRegistro], [IdProveedor], [SaldoActual], [FechaActual], [UltimoPago], [FechaPago]) VALUES (1, N'1', N'$254,305.00', N'26/01/2019', N'$0.00', N'Sin fecha')
SET IDENTITY_INSERT [dbo].[reportes_proveedores] OFF
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([IdUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Email], [Usuario], [Password], [Role], [Imagen]) VALUES (1, N'Joel', N'Suazo', N'252322', N'La Ceiba', N'pdhn@gmail.com', N'AJ', N'9fWtfjqKA4ikVQrDYwL7fw==', N'Admin', NULL)
INSERT [dbo].[usuarios] ([IdUsuario], [Nombre], [Apellido], [Telefono], [Direccion], [Email], [Usuario], [Password], [Role], [Imagen]) VALUES (2, N'Alex', N'Pagoada', N'333363', N'La Ceiba', N'alex@gmail.com', N'pdhn', N'1kGEk2Id/FN8uUXFbopfOg==', N'Admin', NULL)
SET IDENTITY_INSERT [dbo].[usuarios] OFF
SET IDENTITY_INSERT [dbo].[ventas] ON 

INSERT [dbo].[ventas] ([IdVenta], [Codigo], [Descripcion], [Precio], [Cantidad], [Importe], [Dia], [Mes], [Year], [Fecha], [Caja], [IdUsuario], [Compra]) VALUES (1, N'8354816', N'Ram', N'$700.00', 10, N'$700.00', 30, N'ene.', N'2019', N'30/ene./2019', 0, 1, N'9906874')
INSERT [dbo].[ventas] ([IdVenta], [Codigo], [Descripcion], [Precio], [Cantidad], [Importe], [Dia], [Mes], [Year], [Fecha], [Caja], [IdUsuario], [Compra]) VALUES (2, N'820916249', N'PC', N'$7,000.00', 1, N'$7,000.00', 9, N'02', N'2019', N'09/02/2019', 0, 2, N'506324510')
SET IDENTITY_INSERT [dbo].[ventas] OFF
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'usuarios', @level2type=N'COLUMN',@level2name=N'Imagen'
GO
