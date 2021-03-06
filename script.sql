USE [master]
GO
/****** Object:  Database [Dbo_Books]    Script Date: 16.01.2022 23:22:55 ******/
CREATE DATABASE [Dbo_Books]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dbo_Books', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Dbo_Books.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Dbo_Books_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Dbo_Books_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Dbo_Books] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dbo_Books].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dbo_Books] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dbo_Books] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dbo_Books] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dbo_Books] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dbo_Books] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dbo_Books] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dbo_Books] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dbo_Books] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dbo_Books] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dbo_Books] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dbo_Books] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dbo_Books] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dbo_Books] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dbo_Books] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dbo_Books] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dbo_Books] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dbo_Books] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dbo_Books] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dbo_Books] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dbo_Books] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dbo_Books] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dbo_Books] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dbo_Books] SET RECOVERY FULL 
GO
ALTER DATABASE [Dbo_Books] SET  MULTI_USER 
GO
ALTER DATABASE [Dbo_Books] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dbo_Books] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dbo_Books] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dbo_Books] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Dbo_Books] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Dbo_Books] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Dbo_Books', N'ON'
GO
ALTER DATABASE [Dbo_Books] SET QUERY_STORE = OFF
GO
USE [Dbo_Books]
GO
/****** Object:  Table [dbo].[Tbl_Admin]    Script Date: 16.01.2022 23:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Admin](
	[AdminID] [tinyint] IDENTITY(1,1) NOT NULL,
	[AdminADSOYAD] [varchar](50) NULL,
	[AdminSIFRE] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_ADMIN] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Hakkimizda]    Script Date: 16.01.2022 23:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Hakkimizda](
	[İcerik] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Kategoriler]    Script Date: 16.01.2022 23:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kategoriler](
	[KategoriID] [smallint] IDENTITY(1,1) NOT NULL,
	[KategoriAdı] [varchar](50) NULL,
	[KategoriAdet] [smallint] NULL,
 CONSTRAINT [PK_TBL_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Kitaplar]    Script Date: 16.01.2022 23:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kitaplar](
	[KitapID] [int] IDENTITY(1,1) NOT NULL,
	[KitapADI] [varchar](50) NULL,
	[KitapKARAKTERLERİ] [varchar](500) NULL,
	[KitapÖZETİ] [varchar](max) NULL,
	[KitapRESİM] [varchar](100) NULL,
	[KitapTARİH] [smalldatetime] NULL,
	[KitapPUAN] [tinyint] NULL,
	[KitapYAZAR] [varchar](50) NULL,
	[KategoriID] [smallint] NULL,
 CONSTRAINT [PK_TBL_Books] PRIMARY KEY CLUSTERED 
(
	[KitapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Kullanici]    Script Date: 16.01.2022 23:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kullanici](
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](50) NULL,
	[Sifre] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Kullanici] PRIMARY KEY CLUSTERED 
(
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Mesajlar]    Script Date: 16.01.2022 23:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Mesajlar](
	[MesajID] [int] IDENTITY(1,1) NOT NULL,
	[MesajAdSoyad] [varchar](50) NULL,
	[Mail] [varchar](50) NULL,
	[İcerik] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tbl_Mesajlar] PRIMARY KEY CLUSTERED 
(
	[MesajID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Ozetler]    Script Date: 16.01.2022 23:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Ozetler](
	[OzetID] [smallint] IDENTITY(1,1) NOT NULL,
	[OzetADI] [varchar](50) NULL,
	[OzetKarakterler] [varchar](500) NULL,
	[OzetYazı] [varchar](max) NULL,
	[OzetKitapFoto] [varchar](50) NULL,
	[OzetYazar] [varchar](50) NULL,
	[OzetKisi] [varchar](50) NULL,
	[OzetKisiMail] [varchar](50) NULL,
	[OzetDurum] [bit] NULL,
 CONSTRAINT [PK_TBL_OZET] PRIMARY KEY CLUSTERED 
(
	[OzetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Slider]    Script Date: 16.01.2022 23:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Slider](
	[Resimid] [int] IDENTITY(1,1) NOT NULL,
	[Resim] [varchar](50) NULL,
	[ResimDurum] [bit] NULL,
 CONSTRAINT [PK_Tbl_Slider] PRIMARY KEY CLUSTERED 
(
	[Resimid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Uyeler]    Script Date: 16.01.2022 23:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Uyeler](
	[UyeID] [int] IDENTITY(1,1) NOT NULL,
	[UyeMail] [varchar](50) NOT NULL,
	[UyeSifre] [varchar](50) NOT NULL,
	[UyeAdsoyad] [varchar](50) NOT NULL,
	[UyeKullanici] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Uyeler] PRIMARY KEY CLUSTERED 
(
	[UyeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yorum]    Script Date: 16.01.2022 23:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yorum](
	[YorumID] [smallint] IDENTITY(1,1) NOT NULL,
	[YorumADSOYAD] [varchar](50) NULL,
	[YorumMAIL] [varchar](50) NULL,
	[YorumTarih] [smalldatetime] NULL,
	[YorumOnay] [bit] NULL,
	[YorumYAZI] [varchar](500) NULL,
	[KitapID] [int] NULL,
 CONSTRAINT [PK_TBL_YORUM] PRIMARY KEY CLUSTERED 
(
	[YorumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Admin] ON 

INSERT [dbo].[Tbl_Admin] ([AdminID], [AdminADSOYAD], [AdminSIFRE]) VALUES (1, N'Admin', N'1234')
SET IDENTITY_INSERT [dbo].[Tbl_Admin] OFF
GO
INSERT [dbo].[Tbl_Hakkimizda] ([İcerik]) VALUES (N'KitapOzet.com Projesi’nin çıkış noktası ülkemizdeki kitap okuma alışkanlığını artırmaktır.

Tüm iyi niyetimize rağmen; lisan sorunu, zaman sorunu, orijinal kitabı temin güçlüğü, çok fazla sayfa adedi, televizyondan vakit kalmaması, tembellik… Sebep ne olursa olsun, yeterince okumuyoruz. Bu milli ve önemli sorunun bir nebze hafifletilmesi amacı ile yıllar önce bir karar verdik, okuduğumuz kitaplar içerisinde ülkemizin bugünü ve/veya geleceği için yararlı gördüklerimizi özet ile tercüme ederek paylaşmak.

İlk etapta Ankara Üniversitesi Mühendislik Fakültesi Öğrencilerine ücretsiz olarak dağıtılmaya başlayan kitap özetleri, sonrasında daha geniş kitlelere de ulaşmak amacıyla bu sitede tüm öğrencilerin ve öğrenmek isteyenlerin faydalanması için ücretsiz olarak sunulmaya başlamıştır. Herhangi bir maddi menfaat beklenmeksizin gerçekleştirilen bu hizmetin tek nedeni, ülkemizde okuma alışkanlığının eğitim ve öğretim yıllarında kazanılmasını sağlamaktır.

Oğuzhan Sezer tarafından başlatılan bu girişim, şuanda yine Oğuzhan Sezer tarafından yürütülmektedir. Proje hakkındaki görüşlerinizi yorum olarak ya da merhaba@kitapozeti.com adresine e-posta göndererek bildirebilirsiniz.

Sizden gelen öneri ve fikirlerle KitapOzeti gelişmeye devam edecek.

Özetlerin daha çok kişiye ulaşması ve projeye destek vermek için lütfen sosyal medya hesaplarınızda paylaşın!

KitapOzeti Ekibi')
GO
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] ON 

INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAdı], [KategoriAdet]) VALUES (1, N'Türk Edebiyatı', -3)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAdı], [KategoriAdet]) VALUES (2, N'İtalyan Edebiyatı', NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAdı], [KategoriAdet]) VALUES (3, N'Rus Edebiyatı', NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAdı], [KategoriAdet]) VALUES (4, N'Amerikan Edebiyatı', NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAdı], [KategoriAdet]) VALUES (6, N'Yunan-Latin  Edebiyatı', NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAdı], [KategoriAdet]) VALUES (7, N'İngiliz Edebiyatı', NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAdı], [KategoriAdet]) VALUES (8, N'Alman Edebiyatı', NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAdı], [KategoriAdet]) VALUES (9, N'İspanyol Edebiyatı', NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAdı], [KategoriAdet]) VALUES (10, N'Fransız Edebiyatı', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Kitaplar] ON 

INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (9, N'İLYADA', N'•	Agamemnon •	Agapenor •	Akhilleus •	Amphion •	Andromahi •	Arcesilaus (mitoloji) Briseis •	Forkis •	Glafkos •	Hekabe •	Helen •	İris (mitoloji) • Menelaos •	Migdon (Frigya kralı) •	Otrioneus •	Paris (mitoloji) •	Patroklos •	Polydamas •	Priamos •	Prothoenor •	Sikroslu Lykomedes  •	Teukros •	Thetis •	Truvalı Agenor', N'İlyada destanı, genel çerçevede ele alındığında Troia şehrini ele geçiren Yunanlıların on yıl süren savaş sonucunda Troialıları mağlup etmelerini anlatır. Buna göre, fitne ve uyuşmazlık tanrıçası Eris, tanrılar tarafından deniz tanrıçası Thetis ile evlendirilen Zeus’un torunu Peleus’un düğününe çağrılmamayı gururuna yediremez ve üzerine “en güzel kadına” diye yazdığı bir elmayı konukların arasına atar. Güzellik ve zekâlarıyla tanınan üç kadın tanrıça, Zeus’un karısı Hera, güzellik tanrıçası Aphrodite ve savaş tanrıçası Athena, aralarında hangisinin en güzel olduğu hususunda kavga çıkarırlar. Büyük tanrı Zeus, kavgayı önlemek için Troia kralı Priamos’un oğlu Paris’i hakem tayin eder. Tanrıça Hera, ona, iktidar ve egemenlik; Athena, şan ve şöhret; Aphrodite ise, ona dünyanın en güzel kadınını vermeyi vaat eder. Paris, Aphrodite’i seçer. Aphrodite, sözünü tutar ve Isparta kralı Menelaos’un karısı Helena’yı Troia’ya kaçırır. Bunun üzerine Yunanlılar, Troialılara karşı bir intikam seferine çıkarlar. Böylelikle iki devlet arasında kadınların sebep olduğu bir savaş başlar.
Yunan ordusu Aulis limanında toplanır. Rüzgâr tanrısı Artemis, gemileri yürütecek rüzgârı vermez. Yunan ordusunun başkumandanı, Argos ve Isparta kralı Menelaos’un kardeşi Agamemnon, başvurdukları kahinin tavsiyesi üzerine vereceği rüzgâra karşılık Artemis’e kızı İphigeneia’yı kurban eder. Ancak Artemis, kızı öldürmez, onu bir dişi geyikle değiştirerek kurtarır. Yunanlılar istedikleri rüzgâra kavuşur. Sonunda Troia kıyısına ulaşırlar. On yıl sürecek olan bir savaş başlar. Tanrılar da bu savaşta taraf olurlar. Tanrıça Hera ile Athena, Paris’e olan öfkelerinden dolayı Yunanlılara yardım ederler.
Savaşın son yılında Yunanlıların ordusunda salgın başlar. Görüşüne başvurulan kâhin, bu salgının ancak, Agamemnon’a savaş ganimeti olarak verilen Khryseis adlı kızın, Tanrı Apollon’un rahibi olan babasına geri verilmesi ile sona ereceğini söyler. Başkumandan Agamemnon, bu durumu, istemeye istemeye kabul eder. Ancak bu defa da Akhilleus’a savaş ganimeti olarak verilen Brieis isimli köle kızı onun elinden alır. Yapılan bu harekete çok öfkelenen Akhilleus, “Myrmydonlar” adı verilen askerlerini savaştan geri çeker. Akhilleus’un güçlü desteğinden mahrum kalan Akhaia ordusu geri püskürtülür. Bu arada Agamemnon, yaptığı hareketin yanlışlığını anlar; Akhilleus’u tekrar cepheye çağırır. Agamemnon’un davetini reddeden Akhilleus, ertesi gün yurduna dönmek için denize açılmaya karar verir. Ancak, Akhaiaların daha fazla aşağılanmalarını görmek için kalmayı tercih eder. Bu arada arkadaşı Patroklos da uğranılan yenilgilerden büyük üzüntü duymaktadır. Patroklos, Myrmydonlarla savaşa katılmak için arkadaşı Akhilleus’tan izin alır. Akhilleus, arkadaşına kendi silahını ve zırhını verir. Ancak, iyi bir savaşçı olamayan Patroklos, Troialı Hektor ile girdiği çarpışmada ölür.
Artık Akhilleus’un kafasında arkadaşının intikamını almaktan başka bir düşünce yoktur. Bu arada Agamemnon ile de barışır. Sonunda Hektor’u öldürür, arkadaşının intikamını alır. Ancak Akhilleus, Paris’in attığı bir okla öldürülür. İthaka kralı Odysseus ve kahraman Diomedes, kıyafet değiştirerek düşmanlarının şehrine girerler; Troia’nın gücünü temsil eden tanrıça Athena’nın tahtadan yapılmış Palladion adlı heykelini çalarlar. Daha sonra da bilinen tahta at hilesine başvurarak Troia şehrine girerler. Bütün Troialı erkekler öldürülür. Savaşın sonunda Isparta kralı Menelaos, bu savaşa sebep olan Helena’ya yeniden kavuşur.
', N'~/resimler/yunan2.jpg', CAST(N'2022-01-07T19:47:00' AS SmallDateTime), 9, N'HOMEROS', 6)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (10, N'ODYSSEIA', N'•	Agamemnon •	Aias •	Aiolos •	Alkinoos •	Arete •	Argos (mitoloji)  •	Helen  •	Ilos  •	Kalipso •	Kirke  •	Menelaos  •	Nausikaa •	Nestor  •	Odisseus  •	Penelope •	Polifimos', N'
Odysseus, İtkaha adası kralıdır. O da diğer krallar gibi Troya (Troia) savaşına katılır. Karısı Penelope’yi sarayında bırakır. Savaşta geçen on yıldan sonra Odysseus, adasına dönmeye karar verir. Bu zaman zarfında komşu adaların kral ve prensleri, karısı Penelope’yi elde etmeye çalışmışlar, onun kurnazca bir hilesi sonucunda emellerine ulaşamamışlardır. Penelope, büyük bir sadakatle kocası Odysseus’un dönmesini bekler. Bu arada talipleri zorla saraya yerleşmiş ve Penelope’yi, aralarından birini seçmesi konusunda zorlamaktadırlar. Penelope, önceleri kayınbabası Leartes için bir kefen bezi dokuması gerektiğini, bu kumaşı bitirir bitirmez kararını vereceğini söyler. Gündüz dokuduğu kumaşı gece sökmek suretiyle zaman kazanmaya çalışır. Uzun süre bu hilesini sürdürür. Ancak, kölelerden birinin haber vermesi üzerine zor durumda kalır.
Bu sırada Odysseus ve arkadaşlarının yurtlarına dönmek için bindikleri gemi fırtınaya kapılır. Önce Thrakia (Trakya) kıyılarına düşer, sonra vahşi Kikonlarla savaşırlar. İkinci bir fırtına ile Lotophaglar (Lotos yiyenler) ülkesine düşerler. Burası, yiyenlere memleketini unutturan lotos (lotus) çiçekleriyle doludur. Üç arkadaşı bu çiçeklerden yemişlerse de Odysseus, onları gemiye bindirmeyi başarır; oradan uzaklaşırlar. Ancak, bu defa da Kykloplar (tek gözlü devler) ülkesine düşerler. Deniz tanrısı Poseidon’un oğlu tek gözlü dev Polyphemos’un mağarasına farkında olmadan girerler. Polyphemos, mağaranın kapısını kapar ve içerdekilerin altısını yer. Odysseus ve arkadaşları devi sarhoş ederler. Sonra da ateşte kızdırdıkları bir kazıkla devin tek gözünü kör ederek mağaradan kurtulurlar.
Bir süre sonra, insan eti yiyen Laistrigon adlı devlerin eline düşerler. Onların elinden kurtulmayı başaran Odysseus sağlam kalan tek gemiyle Aia adasına ulaşır. Burada büyücü kadın Kirke ile birlikte yaşar. Ancak burada da başından birtakım olaylar geçer. Tekrar adasına doğru yola koyulur; ancak, gemisi parçalanır. Tutunduğu bir direk parçasıyla gökyüzünü omuzlarında taşıyan tanrı Atlas’ın kızı Kalypso’nun yaşadığı Ogyga adasına sürüklenir. Kalypso, Odysseus’a âşık olur. Onu yedi yıl adada alıkoyar. Eğer kendisinden ayrılmazsa ona ölümsüzlük vereceğini söyler. Yurt hasretiyle yanıp tutuşan Odysseus, tanrıların yardımıyla Kalypso’nun elinden kurtulmayı başarır. Kendi yaptığı bir sal ile tekrar denize açılır. Denizde karşılaştığı türlü zorluklardan sonra Phaiakların ülkesi olan Skheria adasına ulaşır. Burada iyi karşılanır. Onların yardımlarıyla ülkesi İthaka’ya ulaşır.
Bu arada karısı Penelope de taliplerini türlü hilelerle oyalamaya devam etmektedir. Taliplerinin baskılarından dolayı iyice köşeye sıkışan Penelope, biraz daha zaman kazanmak için bir çare daha bulur; kocası Odysseus’un yayını gerip on iki halkanın içinden bir ok geçirebilen kişiyle evleneceğini söyler. Bu arada Odysseus da adaya gelmiş ve durumu öğrenmiştir. Tanınmamak için dilenci kılığına girer ve müsabakaya katılır. Yarışma sırasında yayı alarak önce oku halkalardan geçirir. Sonra da karısının taliplerini öldürür. Gerçek kimliğini açıklar ve hem kendisini yirmi yıl sabır ve sadakatle bekleyen karısına, hem oğlu Telemakos’a hem de krallığına kavuşur.
', N'~/resimler/yunan3.jpg', CAST(N'2022-01-14T16:30:00' AS SmallDateTime), 10, N'HOMEROS', 6)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (11, N'DECAMERON', N'Pampinea, Filomena, Lauretta, Emilia, Ellisa, Fieametta ve Neifile Panfilo, Filostrato, Dioneo).', N'Bir veba salgını olduğu esnada , yedi kız, üç erkek olmak üzere on kişilik bir topluluk,veba salgınından kaçmak için, yakınlarında ki tepelerden birinin eteğine bir köşke çekilir. Bu on kişilik topluluk orada iki hafta kalırlar. Her gün aralarından bir kral ve kraliçe seçerler, onların yönetimi altında, şehrin dertlerinden uzak, neşeli bir hayat sürmeye çalışırlar.Cuma ve cumartesi günleri hariç ; geri kalan on gün içinde öğleden sonra çimenler üzerine yayılıp, herkes birer hikaye anlatır. Cuma ve cumartesi günlerini oruç ve ibadete ayırırlar. Böylece günde on hikaye , toplam yüz hikaye anlatılmış olur. Bu hikayelerin kimisi komik, kimisi acıklıdır.', N'~/resimler/italyan1.jpg', CAST(N'2022-01-14T16:33:00' AS SmallDateTime), 9, N'Giovanni Boccaccio', 2)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (12, N'İLAHİ KOMEDYA', N'CEHENNEM,ARAF,CENNET', N'Cehennem (Inferno): İlahi Komedya’nın ilk bölümünü oluşturan Cehennem’i Dante’nin 1308 yılında tamamladığı sanılıyor. Cehennem 34 kanto içerir. Bu kantoların toplam dize sayısı 4720’dır. Dante bu yolculuk boyunca 112 kişiyle karşılaşır.

Cehennem, dibe doğru inildikçe daralan bir çukurdur. Bu çukur, iç içe geçmiş dokuz kattan oluşur. Dairelerin her biri günah derecelerine göre sıralanmıştır. Aşağıya inildikçe cezalar ağırlaşır. İnsanlar yaşarken işledikleri günahlara göre cehennemdeki katlara yerleşmişlerdir.

Cehennem, Kudüs kentinin altındadır. Cehennemin giriş bölümü “kötülük de iyilik de yapmadan yaşamış olanların ruhlarına ayrılmıştır. Cehennemin ilk akarsuyu Akheron da buranın sınırındadır. Cehennem’in ilk dairesi olan Limbus’taki ruhlar Hıristiyanlıktan önce doğdukları için vaftizden yoksun kalmış ruhlardır. Daha sonra asıl cehennem başlar. İkinci dairede şehvet düşkünleri, üçüncü dairede oburlar, dördüncü dairede cimriler, savurganlar, beşinci dairede öfkeliler cezalandırılır. Beşinci daire ve altıncı daireyi ağır suçluların bulunduğu, içinde “sonsuza dek ateş yanacak olan” Dite katı yer alır. Altıncı dairede sapkınlar, yedinci dairede, Tanrı’ya isyan ve hakaret edenler vardır. Sekizinci kata kadın satıcıları, sömürücüler, rüşvet yiyenler, hilekarlar, hırsızlar, simyacılar ve kalpazanlar atılmıştır. Dokuzuncu dairede kötülüklerin simgesi Lucifer''i de, yarı beline dek buzlara gömülü olarak görürler.

Araf (Purgatario): Araf, 33 kanto içerir; toplam dize sayısı 4755’dir. Dante, bu yolculuk sırasında 46 kişiyle karşılar. 10 Nisan Perşembe, paskalya günü başlayan gezi üç gün sürer.

Dante’ye göre Araf, meleklerin yer aldığı; sık sık şarkı söylenen, Cehennem ve Cennet arasındaki bir köprüdür. Araf’a gidecek olan ruhları bir melek, Tevere ırmağının denize döküldüğü yerden, Araf’ın bulunduğu adanın kumsalına taşımakla görevlidir. Kumsalda, kayalık bir bölümden geçilir Araf’ın girişine. Ruhlar, Araf’a girmeden önce, ruhlarının ağırlığıyla doğru orantılı olarak bir süre burada bekletilmektedir. Araf’ın üst katlarına çıkıldıkça, günahın ağırlığı ve verilen ceza azalmaktadır. Cezanın amacı, ruhun eğitilmesi, günahlardan pişman olmanın sağlanmasıdır. İyilik kötülük karşıtlığının bir sonucu olarak Cennet-Cehennem ikilisine eklenen Araf, bir değişim merkezidir.

Vergilius ile birlikte Araf’a tırmanan Dante, Yeryüzü Cenneti’nde yıllardan beri görmemiş olduğu Beatrice ile karşılaşınca, Vergilius birden yok olur. Lethe ve Eunoe ırmaklarında arınan Dante, Beatrice ile birlikte Cennet yolculuğuna başlar.

Cennet (Paradiso) : Cennet, 33 kanto içerir ve bu kantoların toplam dize sayısı 4758’dir.Cennet boyunca Dante’ye Beatrice rehberlik eder. Dante’nin 14 Nisan Perşembe sabahı başlayan Cennet yolculuğu, aynı gün öğleden sonra Tanrı’nın ışığına ulaşmasıyla noktalanır. Dante cennet planını hazırlarken Ptolemaios (Batlamyus) sisteminden yararlanmıştır. Dante’nin Cennet’ine göre, Dünya evrenin merkezindedir ve sabit bir cisimdir. Kürenin çevresinde yedi gezegen dönmektedir: Sırasıyla Ay, Merkür, Venüs, Güneş, Mars, Jüpiter ve Satürn.

Bu gezegenler, yedi gök içerisinde bulunmakta, bunlardan sonra iki kat daha yer almaktadır. Sekizinci katta Dönmeyen Yıldızlar, dokuzuncu katta gezegenlerin dönmesini sağlayan İlk Devindirici vardır. Arı ışıktan oluşan, maddeden arınmış onuncu ve en yüksek kat ise, kutlu ruhlarla Tanrı’nın katıdır (Arş-ı Ala). Burada Meryem ve Beatrice gibi Tanrı’nın sevgili kulları kutsal bir gül oluşturur.
', N'~/resimler/italyan2.jpg', CAST(N'2022-01-14T16:35:00' AS SmallDateTime), 8, N'DANTE', 2)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (13, N'KURTARILMIŞ KUDÜS', N'Godefroi de Bouilon,Clorinda, Armida ', N'Kurtarılmış Kudüs, Birinci Haçlı Seferi’nde Kudüs’ün alınışını anlatan bir destandır. 20 kantodan meydana gelmiştir. 
      Birinci Haçlı ordusu Antakya’nın aldıktan sonra Godefroi de Bouilon’un komutası altında Kudüs üzerine yürür. Armida isimli büyücü bir kız birçok Hıristiyan şövalyesini esir eder ve böylece Haçlı ordusunu zor duruma sokar. Şövalye Tancredi Müslüman savaşçı kız Clorinda’ya âşık olur. Fakat bir vuruşma sırasında tanımadan onu öldürür. Antakya kralının kızı Müslüman Erminin, Tancredi’yi sever ve Tancredi savaşta yaralandığı zaman onu tedavi eder. Büyücü Armida’nın esir ettiği şövalyeler kurtulup orduya dönerler, son savaş başlar, Kudüs alınır. ] 
      Tasso , Homeros ‘un İlias destanını örnek olarak almıştır. İlias’ta Yunanlılar Agamemnon’un komutası altında Troia şehrini kuşatır ve alırlar; Kurtarılmış Kudüs’te de , Avrupalılar Godefroi de Bouillon’un komutası altında Kudüs şehrini kuşatır ve alırlar.
', N'~/resimler/italyan3.jpg', CAST(N'2022-01-14T16:37:00' AS SmallDateTime), 7, N'TASSO', 2)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (14, N'ROMEO VE JULİET', N'•	Prince Escalus:  •	Eczacı •	Count Paris:  •	Keşiş Laurence •	Mercutio:  •	Romeo:  •	Lord Capulet:  •	Benvolio:  •	Juliet: •	Lord Montague:  •	Tybalt:  •	Mürebbiye:  •	Rosaline:', N'Verona’da yaşayan iki köklü aile birbirine düşmandır. Capulet’ler, Montague’ler arasındaki bu büyük savaş birçok insan tarafından korkulacak boyuta ulaşmıştır. Verona Prensi Escalus, bu durumun son bulmasını ve bir daha kaos ortamı yaratmaya kalkarlarsa idam edileceklerini söylemiştir. Paris, Prens’in yakın akrabalarından birisidir. Paris, Lord Capulet ’ten kızıyla evlenmek istediğini söyler. Lord Capulet, bu teklifin daha erken olduğunu düşündüğü için 2 yıl sonra düşüneceğini bildirir. Aradan 2 yıl geçtikten sonra Kont Paris teklifini yineler. Bunun üzerine Lord Capulet, Juliet’e evlenmesi gerektiğini tembihler. Şehir genelinde bir baloya katılmak için hazırlanırken annesi bile Juliet’e teklifi kabul etmesi konusunda fikirler verir.
Montague Ailesinin oğlu olan Romeo, düşmanları Capulet ailesinden olan Rosaline abayı yakmıştır. Defalarca aşkını itiraf etmesine rağmen Rosaline teklifini kabul etmez. Rosaline’in rahibe olması kavuşmalarına engeldir. Bu durum Romeo’yu çok üzer ve acı verir. Romeo’nun dostu olan Benvolio Rosaline’e duyduğu aşkın bir geleceğinin olmadığından unutması gerektiğini söyler. Fakat o bunları söylerken Romeo şehir genelinde yapılacak baloda ne giyeceğini düşünür. Fakat baloyu Capulet ailesine özgü yapıldığından içeriye girmesi yasaktır. Romeo oraya gidip aşkını bir kez daha söylemek ister. Benvolio başına bir iş gelmemesi için ona yardım eder ve baloya sokar. Benvolio çevredeki kızları göstererek onlardan biri ile vakit geçirmesi gerektiğini tekrar yineler. Fakat Romeo diğer kızlara bakmadan sadece Rosaline’yi arar. Rosaline’yi ararken karşısına dünyalar güzeli bir kız çıkmış ve ona vurulmuştur. Kızın adı Juliet’tir. Romeo, Juliet’yi dans ederken resmen aşkla bakar. Bakışlarını fark eden Juliet, Romea’ya tutulur. Fakat ikisi de iki ayrı aileye ait ve düşmanlardır. Fakat bu durumu umursamazlar aşklarını yaşamak için elinden geleni yaparlar. Aradan zaman geçtikçe bu durum onları sıkmış ve evlenme kararı almışlardır. Romeo, Juliet’i elde etmek için rahipten yardım ister. Juliet’de aynı şeyleri dadısına söyler ve arabulucu olmasını ister. Rahip ailelerin arasındaki kanın durmasını sağlamak için ikisini nikahlar. Nikâh sonrası aileler bu durumu mecbur kabul edecek ve evlenecektir.
Caputler’den Tybalt yolda giderken karşısında Romeo’la karşılaşır. Romeo’la kavga etmek istercesine laf atar fakat Romeo hiçbir tepki vermemiştir. Fakat Mercutio dediklerini sineye çekemez ve karşılık verir. Tybalt karşılığın sonucunda düelloya davet etmiş ve düelloyu kazanıp Mercutio’yu katletmiştir. Gözlerinin önünde arkadaşının öldüğünü gören Romeo, biranda sinirle Tybalt’ı öldürmüştür. Prens ettikleri kavgayı duymuş ve askerlerine sorumluların tutuklanmasını emretti.
Caputler artık Paris ile Juliet’in evlenme kararını onaylamış ve işlemleri başlatmıştı. Juliet, Paris’e sevmediğini gönlünde farklı biri olduğunu defalarca söylemiştir. Haberleri duyan Romeo, askerlerden kaçmak için bir yol arar. Prens, Romeo’ya sürgün cezası vermiş ve tüm kaçma umutları suya düşmüştür. Juliet, tek çareyi rahipte bulacağını bildiği için direk yanına gider. Rahibe olanı biteni anlattıktan sonra rahip ona bir iksir verir. Bunu içtiğinde 2 gün boyunca hiçbir şekilde uyanmayacak insanlar onu ölü olarak bilecek ve mezara koyacak Romeo’da gelip onu kurtaracaktı. Plan harikaydı bu planı Romeo’ya anlatmak için ona bir posta yollar fakat Romeo’ya zamanında gitmez.
Romeo, Juliet’i kurtarmak için kaçmayı başarmış ve Juliet’in öldüğünü duyunca kafayı sıyıracak dereceye gelmiştir. Paris, her şeyin sorumlusunun Romeo olduğunu düşündüğü için ona saldırır fakat Romeo, Paris’i alt eder ve öldürür. Juliet’in cansız bedenini son kez öpmek isteyen Romeo, Juliet’in ağzındaki zehirden dolayı ölür. Juliet, uyandığında Romeo’nun başında ölü olduğunu görünce acıya dayanamaz ve intihar eder. Rahip bütün olanları iki aileye de tüm gerçeklikle anlatır. Aileler üzüntülerini birlikte yaşarlar ve barışırlar. Olan iki gencin aşkına ve hayatlarına olmuştur.
', N'~/resimler/ingiliz1.jpg', CAST(N'2022-01-14T16:38:00' AS SmallDateTime), 10, N'William Shakespeare', 7)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (15, N'ROBINSON CRUSOE', N'•	Robinson Cruzo  •	 Cuma', N'Orta halli bir İngiliz ailenin çocuğu olan Robinson denizlere açılıp dünyayı dolaşmak, serüvenler yaşamak istemektedir. Ailesi ise iyi bir işte sakin bir hayat sürmesini istemektedir.
Bir gece ailesinden gizli, bir ticaret gemisiyle denizlere açılır. Gemi şiddetli bir fırtınaya yakalanır. Robinson yola çıktığına pişman olur. Gemi karaya ulaşmadan Afrika sularında Faslı korsanlarca ele geçirilir. Robinson bir süre esir yaşamı sürer. Bir ara fırsatını bulup bir sandalla deniz yoluyla kaçmaya çalışır. Onu bir Portekiz gemisi bulur, Brezilya’ya götürür. Artık denizciliğe tövbe etmiştir.
Ne var ki bir İngiliz çiftçi ona Afrika’dan köle getirme işini teklif edince ettiği tövbeyi unutur, tekrar denizlere açılır. Gemi Güney Amerika sahillerinin biraz uzağındaki bir adaya yaklaşırken kayalıklara çarpıp batar. Sadece Robinson adaya sağ olarak çıkabilir.
Adada ne yerli ne beyaz kimse yaşamamaktadır. İhtiyaçlarını batan geminin enkazından getirdiği yiyecek ve araç gereçle giderir. Barınak yapar, tahıl yetiştirir, yabani keçileri ehlileştirir.
Adadaki yirmi üç yılı böyle geçmiştir. Yirmi dördüncü yılın ortalarında bir gün Robinson adanın öbür tarafında başka bir adadan gelmiş olan yerlilerin savaştığını görür. Robinson onların bir daha gelmesinden korkup yıllardır sakladığı barut ve silahını hazırlar. Sonraki gün yerliler yine gelince Robinson silahıyla onlara ateş eder. Yerliler ellerindeki bir esiri bırakıp kaçar. Robinson bu esir yerliye “Cuma” adını verir, biraz İngilizce öğretir. Cuma’dan diğer adada 17 tane beyaz esir olduğunu öğrenir. Onları kurtarmak üzere tekne yaparlar. Tam gidecekleri gün adaya başka yerliler bir beyaz birkaç da yerli esirle gelirler. Beyaz olan, İspanyol, yerli esirlerden biri de Cuma’nın babasıdır. Robinson ve Cuma İspanyol’la Cuma’nın babasını kurtarırlar.
Cuma’nın babasıyla İspanyol geldikleri adada kalan yerli ve beyaz esirleri kurtarmak için geri döner.
O günlerde Robinson’un adasına bir İngiliz gemisi demirler. Gemide isyan çıkar. Kaptan ve iki adamı denize atılır. Robinson, Cuma ve bu üç gemici, gemiyi tekrar ete geçirir. Cuma’nın babasıyla İspanyol’u beklerler. Onlar gelmeyince İngiltere’ye dönüp cezalandırılmak istemeyen isyancıları adada bırakan Robinson, Cuma ve diğer üç denizci İngiltere’ye gider. (1687)
Aradan geçen otuz beş yılda Robinson’un anne-babası ölmüş, iki oğlu, iki kız kardeşi bir de erkek kardeşi hayattadır.
Robinson tekrar evlenir, üç çocuğu olur. 1695’te karısı ölür.
Robinson yeğeninin kaptanlığını yaptığı gemiyle Çin’e gitmeye karar verir ve üzere olan gemiye atlar, Çin’e doğru yola çıkarlar.Yolda Robinson’un adasına uğrarlar. Adada kalan esir beyazlar ve isyancı İspanyollar yerlilerle evlenmiş hep beraber mutlu bir yaşam sürmektedir.
Buna sevinen Robinson ve Cuma Çin’e doğru yola devam eder. Brezilya yakınlarında yerliler gemiye saldırır. Cuma ölür. Yolculuk devam eder. Mürettebat, kendilerine öğüt veren Robinson’un öğütlerinden sıkıldığı için Çin’de onu bıraktırır. Robinson kervanlarla kara yoluyla İngiltere’ye ulaşmayı başarır. Robinson’un geride bıraktığı ömrü serüvenlerle geçmiştir, o artık kalan ömrünü dönüşü olmayan büyük yolculuğa hazırlanmakla geçirir.
', N'~/resimler/ingiliz2.jpg', CAST(N'2022-01-14T16:39:00' AS SmallDateTime), 9, N'Daniel Defoe', 7)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (16, N'OLIVER TWIST', N'Oliver Twist:  Fagin: . Bay Brownlow:   Nancy:  Bill Skies:  Bay Bumble Edward Leeford: ', N'Oliver Twist bir yetimhanede dünyaya gelir. Yetimhane müdürü bay Bumble, ona adını koyar. Çocukluğunu bayan Mann’ ın yanında geçirir. 11 yaşındayken bay Sowerbery’nin yanına evlatlık verilir. Bay Sowerbery cenaze işleriyle uğraşan biridir. Oliver burada kendini mutlu hissetmez ve evden kaçar. Yedi günlük yorucu bir yolculuktan sonra Londra’ya gelir. Aç ve yorgun olan Olİver Londra’da Jack Dawkıns ile tanışır. Jack Oliver’e yardım eder, kalması için onu kendi kaldığı yere getirir. Burada fagın ve arkadaşlarıyla tanışır. Bu Oliver’in hayatındaki dönüm noktasıdır. Farkında olmadan hırsız çetesinin içinde kendisini bulmuştur. Bir gün Dawkıns hırsızlık yaparken Oliver paniğe kapılır, kaçmaya başlar. Yüz Temel Eser Özetleri, Kitap Özetleri, Roman Özetleri, Yüz Temel Eser, Özet
Mendilinin çalındığını anlayan Brownlow, Olıver’dan şüphelenir ve onu yakalar. Oliver bütün hayatını Brownlow’a anlatır. Brownlow ona acıyıp ailesini bulabilmesi için yardım edeceğine söz verir. Oliver’ın dürüst biri olup olmadığını anlamak için brownlow onu bir kitapçıya yüklü bir parayla kitap almak için göndererir. Yolda Fagın’ın arkadaşı olan William Sikes onu kaçırır ve Fagın’e getirir. Fagın, Oliver’ı tamamen ele geçirebilmek için suç işlemesi gerektiğini bilmektedir. Bunun için William’ın yapacağı bir soyguna Oliver’ın da katılmasını ister. Hırsızlığın yapıldığı gece Oliver pencereden içeri girerken evin hizmetçisi tarafından vurulur. William ve arkadaşları kaçmaya başlar. Oliver’ı evin yakınlarındaki bir hendeğe bırakıp oradan uzaklaşırlar. Oliver iki gün sonra kendine geldiğinde, yarı baygın şekilde en yakındaki eve gider. Burası iki gün önce soyulan evdir. Ev halkı dr Losborn’u çağırır. Dr. Losborn Oliver’ın hayat hikayesini dinler ve ona yardım etmek için elinden geleni yapar. Yaptığı araştırmalar sonucu Oliver’ın asil birinin oğlu olduğunu ve kendisine büyük bir mirasın kaldığını öğrenir. Oliver için bütün kötü günler geride kalmıştır. Artık her şey yoluna girmiştir. Mutlu bir hayat onu beklemektedir.
', N'~/resimler/ingiliz3.jpg', CAST(N'2022-01-14T16:40:00' AS SmallDateTime), 9, N'Charles Dickens', 7)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (17, N'GENÇ WERTHER''IN ACILARI ', N'Werther :  Charlotte. Albert ', N'Genç , tutkulu , duygusal ve duyarlı bir yazar olan Werther küçük bir şehirde  Charlotte adındaki bir kızla tanışmış ve ona aşık olmuştur. Werther bir düre sonra  Charlotte’un Albert ile nişanlı olduğunu öğrenir. Bu duruma çok üzülse de ,  Albert’le dostluk kurmuştur. Albert ise aslında Werther’in ; Charlotte için olan duygularının farkındadır fakat onları sıkı gözetim altında tuttuğunu ve bu duygulardan zarar gelmeyeceğini düşünmektedir.  Bir süre sonra Charlotte’la Albert evlenirler. Bu evlilik ile Werther’in içi aşktan daha da kavrulur ve bir zehir gibi onu etkiler. Werther yine de aşkından vazgeçmeyip bir süre sonra Charlotte’un kendisini gizli bir aşkla sevdiğini anlamıştır. Bu sebeple de, her defasında gizlice Charlotte’u kavrayıp onu öpücüklere boğar.  İkisi de birbirine iyice aşık olurlar fakat Werther sonradan umutsuzluğa kapılır ve arkadaşlarına küçük bir yolculuğa çıkacağını söyleyip onlardan ayrılır. Werther çektiği acılara daha fazla dayanamayarak intihar eder.', N'~/resimler/alman1.jpg', CAST(N'2022-01-14T16:44:00' AS SmallDateTime), 9, N'Johann Wolfgang von Goethe ', 8)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (18, N'PAMUK PRENSES VE YEDİ CÜCELER', N'Kraliçe,Pamuk Prenses, Yedi Cüceler', N'Ülkenin kraliçesi camdan dışarı bakıp bir yandan da dikiş nakış işi yapıyormuş. Kış ayları olduğu için etrafta bolca kar varmış. Bir yandan dikiş dikip bir taraftan da kar manzarasını seyreden kraliçenin eline iğne batmış ve kanamış.
Pamuğu kanın üzerine bastırırken “şöyle dudakları kan gibi kırmızı, saçları pencere pervazı gibi kara, teni de pamuk gibi bembeyaz bir kızım olsa” diye iç geçirmiş.
Allah duasını boş çevirmemiş ona bir kız evlat vermiş. Hakikaten de doğan kız çocuğu kraliçenin temenni ettiği gibi akça pakça şirin bir şeymiş. Ona “Pamuk” ismini koymuş. Kraliçenin ömrü kızının mürüvvetini görmeye yetmemiş, bir süre sonra eceli gelmiş ve vefat etmiş.
Kral yeniden evlenmiş. Kralın karısı güzel ama kendini beğenen, narsist ve kıskanç biriymiş. Akşama kadar aynada kendini seyredermiş. Kendine sihirli ve konuşan bir ayna almış. Akşama kadar aynaya “Benden daha güzeli var mı?” diye sorarmış. Ayna da “Yok senden daha güzeli” diye cevap verirmiş.
Bir zaman geçince kraliçe kocamış, üvey kızı Pamuk ise genç bir kız olmuş. Sürekli doğruları söyleyen ayna bu sefer aynaya “Pamuk prenses senden daha güzel” deyince kraliçe bunu sindirememiş.
Kraliçede vicdan diye bir şey yokmuş. Kral seferde iken emri altındaki avcılardan birini çağırıp “Bir bahaneyle Pamuk prensesi ormana gezdirmeye götür orada öldür onu” demiş.
Avcı emre itaat etmek zorundaymış ama vicdanı da pamuk prensesi öldürmesine engel oluyormuş. Öldürmek yerine Pamuk prensesi ormana bırakmış. Kraliçeyi kandırmak için de bir ceylan vurup kanını Pamuk prensesten aldığı bir kıyafet parçasına sürüp saraya geri dönmüş.
Orman da yalnız kalan Pamuk prenses yürürken ufak bir kulübeye denk gelmiş. Çok yürüdüğü için de yorulup orada uyuyakalmış.
Meğerse bu ev 7 cücelere aitmiş. 7 cüceler evde bir yabancıyı görünce önce sinirlenmişler ama çaresiz olduğunu anlayınca aralarına kabul etmişler.
7 cüceler namuslu ve iyi kalpli insanlarmış. Pamuk prensese cinsel istismarda bulunmak akıllarına bile gelmemiş.
Öte yandan avcının yalanını sihirli ayna ortaya çıkarmış. Sürekli doğru söylediği için kraliçeye pamuk prensesin yaşadığını söylemiş. Kraliçe “kendi işini kendi kendin gör” diyerek büyücüye büyülü elma hazırlatmış. Koca karı kılığına girip ormanda Pamuk prensesin yaşadığı yeri aramaya başlamış.
Sonunda aradığı evi bulmuş. Pamuk prenses evde yalnızmış, kapıyı kraliçeye açmış. Ona parlak kırmızı elmayı vermiş. Pamuk prenses de elmayı ısırınca uyumuş, bir daha uyanamamış. Cüceler onun haline üzülmüşler. Tabuta koyup gömmeye hazırlanırken oradan bir prens geçiyormuş. Prensesin cansız hali hoşuna gitmiş, onu sarayına götürmeye karar vermiş.
Tam o esnada büyü bozulmuş ve pamuk prenses gözünü açmış. Evlenmişler, mutlu hayat sürmüşler. Kraliçe de hasedinden çatlamış.
', N'~/resimler/alman2.jpg', CAST(N'2022-01-14T16:47:00' AS SmallDateTime), 8, N'GRİMM KARDEŞLER', 8)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (19, N'FAUST', N'Faust:  Mefistofeles:. Margarete:  Wagner:  Marthe: ', N'Roman, ''Tiyatroda ön oyun'' başlıklı bölümle başlamaktadır. Bu bölümde, tiyatro müdürü, ozan ve palyaço arasında diyaloglarvardır. Tiyatro müdürü, sahnelenecek bir oyun üzerinde ozan ve palyaço ile konuşur. Her oyunda onlara yardım ettikleri için mutludur. Fakat aralarında görüş ayrılıkları vardır. Tiyatro müdürü, sahnelenecek oyunun seyirciyi merak ettirecek olaylardan oluşması gerektiğine inanmaktadır. Ona göre tiyatro, halkın ruhunu doyurmalıdır. Ozanın ise kusursuz bir yapıtın, uzun yılların ve emeğin sonucunda olunabileceğini düşünmektedir. Seyircinin beklentisi yeterli değildir ona göre. Palyaço ise seyircinin sadece eğlenceyi istediğine inanır. Neticede, tiyatro müdürü bütün imkânları kullanarak iyi bir oyun düzenlemelerini istemektedir.
Oyun, gökyüzünde mukaddime ile başlar. İsrafil, Cebrail, Mikail ve Mefistofeles arasında bir diyolog geçer. Mefistofeles ile diğer melekler arasındaki farklılık bu konuşmayla ortaya çıkar. Konuşmalardan Mefistofeles''in şeytan olduğu anlaşılır. Konuşmaya Tanrı da katılır. Mefistofeles, Tanrı ile bir yarışa girer. Bir insanı yoldan çıkartacaktır şeytan. Gökyüzü kapanır ve melekler dağılır.
Yüksek tavanlı, dar, gotik tarzında bir odada Faust tek başına oturmaktadır. Pek çok ilme vâkıf olan Faust, kendisinin aslında bir şey bilmediğini düşünmektedir. Bu yüzden, artık öğrencilere bir şeyler anlatamayacağına inanmaktadır. Ayrıca eski huzurunu yitirmiştir. İlahî olana karşı şüphe içindedir. Bugünlerde bu boşluğu doldurmak için büyülerle ilgilenmektedir. Nosrtadamus''un el yazmasını açar. Doğayı nasıl kavrayabileceğini düşünür. Doğa ruhunun işaretini söyleyince gizemli bir ruh ortaya çıkar. Ruh onun kendisine benzemediğini söyler. Aralarındaki konuşmayı duyan Wagner içeri girer. Faust''un bir tirad okuduğunu sanır. Faust, Tanrı''yı, varlığın anlamını sorgulamaktadır. Paskalya kutlamalarının olduğu o gün, o, Hristiyanlıktan uzaklaşmış durumdadır.
Şehir kapısının önünde pek çok insan törenlerde eğlenmek için gelmiştir. Neşe içinde, eğlenmeyi hayal etmektedirler. Bu ilkbahar günlerinde Faust ve Wagner de bu kalabalığa katılır. Halk, babası ve kendisi halka büyük yardımları olmuş bu doktoru yanlarında görmekten dolayı çok mutludur. Oysa Faust onların iyi niyetleri karşısında çok üzgündür. Çünkü aslında bir doktor olan babası ona göre pek çok kişinin ölümüne neden olmuştur. Wagner''le bunları konuşurken garip bir köpeğin geldiğini görür.
Faust, fino köpeği ile çalışma odasına girer. İncil''i açan Faust, onu farklı anlamlandırmaya başlar. Şüpheler içinde kıvranmaktadır. Köpek, bir öğrenci kılığına bürünür. Faust, onun kötü bir ruh olduğunu anlar. Önce köpek, sonra öğrenci kılığına bürünen varlık, Tanrı ile bir insanı yoldan çıkarma anlaşması yapan Mefistofeles''tir. Mefistofeles, Faust''la konuşarak onu kandırmaya başlar. Mefistofeles onu haz ve eylemlere sürükleyebileceğini ve mutlu anlar yaşatabileceğini söyler. Bu süreç içinde hep yoldaşı olabilecektir. Ancak bir anlaşma yapmalıdır onunla. Faust, gözünü boyayarak onu kandırabilirse anlaşmayı kabul edeceğini söyler. Mefistofeles kanla yazılmış yazılı bir anlaşma da ister ondan.
Mefistofeles önce akıl ve bilimi bırakmasını ister ondan ve çalışma odasından birlikte ayrılmaya karar verirler. Faust hazırlanmak için gittiğinde odaya gelen bir öğrenciyi Mefistofeles kısa sürede kandırır ve şeytanhğıyla onu yoldan çıkarır. Faust ve Mefistofeles pelerinlerini açarlar ve uçarak bir meyhaneye giderler. Neşeli bir topluluk içine girerler. Mefistofeles oradaki insanların nefislerini kullanarak onlara en iyi içki ve şarap mahzenlerini gösterir. Gerçekte bir hayal olan bu görüntülere ellerini uzattıklarında görüntüler ateş olur; çünkü cehennemden gelmişlerdir.
Meyhaneden sonra Faust ve Mefistofeles, cadıların kazan kaynattıkları bir mutfağa giderler. Çok çirkin görüntüleri olan bir cadı ailesi ile karşılaşırlar. Faust 30 yıl önceki gibi kendini dinç hissetmek için bu kazanda kaynatılan iksiri içmek zorundadır. Faust orada bulunan büyülü bir aynada arzularını harekete geçiren bir kadın hayali görür. Faust, büyülü iksiri içer. İksiri içtikten sonra bütün kadınları çok güzel görmeye başlar. Mefistofeles, onu yoldan çıkarmaya başlamıştır.
Caddede gezen Faust yolda Margarete''i görür, onu çok güzel bulur ve yanına yaklaşır. Ona eşlik etmek ister. Ahlaklı bir kız olan Margarete buna müsaade etmez. Faust, Mefistofeles''e o kızı kendisine ayarlamasını söyler. Mefistofeles, bunun zaman alacağını; çünkü kızın dindar olduğunu söyler. Faust, tamamen arzularının esiri olmuştur.
Mefistofeles, Margarete''i baştan çıkarmak için çok pahalı bir mücevheri gösterişli bir kutu içinde dolabına koyar. Fakir bir kız olan Margarete hayretler içinde kalır. Mücevherleri kimin koyduğunu anlayamaz. Önce nefsine çok hoş gelir, takar. Sonra annesine verir. Dini bütün bir kadın olan annesi de mücevherleri kiliseye bağışlar. Bu arada Margarete, Faust''u unutamamaktadır. Onun çok yakışıklı olduğunu düşünmektedir.
Margarete''e yeni bir mücevher daha gelmiştir. Komşusu Marthe''nın yanına gider ve bu sefer mücevherleri vermek istemediğini anlatır. Onun evine gelip canı isteyince mücevherleri takacaktır. O da yavaş yavaş yoldan çıkmaktadır. Bu arada Mefistofeles, Marthe''nın evine gelir. Ona kocasının öldüğünü söyler. Şahit olarak da arkadaşı Faust''u getirecektir. Kadına sadece ölüm yalanını uydurmakla kalmaz, kocasının onu aldattığını da söyler.
Akşam, olunca Mefistofeles ve Faust güya şahitlik yapmak için Marthe''nın evine giderler. Faust, Margarete''i kandırır. Ona onu sevdiğini söyler. Bir süre sonra Margarete''e sahip olur. Fakat arzularını yenemeyen Faust, bütün insani değerlerini kaybetmediğinden vicdan azabı duyar. Margarete''in kirlendiğini ve bir de çocuk beklediğini ağabeyi öğrenir. Mefistofeles, Faust''la Margarete''in abisinin yan yana gelmesine sebep olur ve Faust''a zorla onu öldürtür.
Faust, şeytan yüzünden her çeşit kötülüğü yapmıştır. Kendini kötü hissetmektedir. Margarete''in hapiste olduğunu ve idam edileceğini öğrenir. Onu kurtarmak için Mefistofeles''le bulunduğu hücreye giderler. Margarete, yaşadığı olaylardan sonra yarı deli hâlinde, pişmanlık içinde kıvranmakta, günahlarının bağışlanması için Allah''a dua etmektedir. Faust''la gelmeyeceğini, günahlarının cezasını bu dünyada çekmek istediğini söyler. Melekler, Margarete''in yüce katta kurtulduğunu söylerler. Faust şeytanla birlikte oradan ayrılır.
', N'~/resimler/alman3.jpg', CAST(N'2022-01-14T16:49:00' AS SmallDateTime), 9, N'Johann Wolfgang von Goethe', 8)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (20, N'DON KİŞOT', N'Don Kişot Dük ve Düşes:  Sancho Panza:  Juana Panza:  Pcro Perez:  Master Nicholas: . Sanson Carrasco:  Dulcinea del Toboso: ', N'I. Bölümdeki Olaylar:
Don Kişot, italya''da Mancha eyaletinde, küçük bir köyde yaşamaktadır. Sürekli olarak şövalye hikâyeleri okuyan Don Kişot, zamanla dünyayı şövalye hikâyelerinde olduğu gibi görmeye başlar. Eski çağlardaki şövalyeliğin canlandırılması gerektiğine inanır. Bir gün, aklını iyice yitirir, kendisini son seyyar şövalye zanneder. Evindeki eski, paslı zırhları, kılıçları kuşanır. Ezilen halkı kurtarmak için çok mükemmel zannettiği sıska atına binerek yollara düşer. Kendisine bir de aristokrat bir sevgili bulmalıdır. Yolda rastladığı çirkin bir köylü kızını çok güzel ve soylu olarak görür ve kendisine sevgili olarak seçer. Artık tek istediği şey, ona resmi şövalyelik unvanı verilmesidir. Bunun İçin de başarılar kazanmak zorundadır.
Yolda bir hana rastlar. Hanı şato sanmaktadır. Hanın (şatonun) sahibini lord olarak görür, kendisini şövalye yapmasını ister. Hanın sahibi, onun zararsız bir deli olduğunu anlar, lordmuş gibi rol yapar. Don Kişot, resmi olarak şövalye unvanını aldığına inanarak gururla köyüne döner. Yolda, Sancho ile karşılaşır. Ona büyük bir servet vaat ederek uşağı olmasını teklif eder. Sonra tacirlerle karşılaşır. Onlara sevgilisi Dulcinea''nin çok güzel bir kız olduğuna inandırmaya çalışır. Onlar da Don Kişot''u döverler.
Don Kişot, bu sefer yolda yel değirmenlerini insanlara kötülük yapan devler sanır. Onlara saldırınca, yaralanır. Yine aklı başına gelmez. Sancho, durumu anlatsa da gerçeği görmez. Kafasındaki hayale inanır. Bundan sonra koyun sürülerini birbirine saldıran iki ordu olarak görür. Zayıf olanlara yardım etmeye karar verir. Koyunlarına saldırıldığını gören çoban, Don Kişot''u döver. Bir başka seferde de Don Kişot kaldıkları bir handaki şarapları kan zannederek şişelere saldırır. Ona gerçekler gösterildiği zaman kabullenmez. Büyücülerin onlara öyle gösterdiğini, onları kandırdığını söyler. Gerçeğin acılığına katlanamaz. Başlarından buna benzer pek çok olay geçtikten sonra, köy papazı ve berberi Don Kişot''u korumak isterler. Onu bir kafese koyarak evlerine götürürler. İyileştirmeye çalışırlar.
II. Bölümdeki Olaylar:
Don Kişot bir süre sonra yine Sancho ile yola koyulur. Sevgilisi Dulcinea''yi bulmak istemektedir. Sancho onu kandırarak ilk gördükleri köylü kızının Dulcinea olduğunu söyler. Yolda pek çok maceradan sonra Dük ve Düşes''in evine varırlar. Dük ve Düşes, Don Kişot''a oyun oynarlar. Don Kişot''a şövalye gibi davranırlar, yardıma ihtiyacı olan kişiler için ondan yardım etmesini isterler. Oyun tam bir komediye dönüşür. Dük, Sancho''ya bir ada verir. Ada, civar köylerden biridir. Köy halkına Sancho''nun vali olduğunu söylerler. On iki günden sonra, Sancho işi bırakır. Daha sonra Don Kişot, Sanson Carrasco ile düello yapar. Kazanan, diğerinin isteğini yerine getirecektir. Sanson kazanır. Don Kişot''a evine dönmesini ve silah taşımamasını emreder. Don Kişot da her şeyden elini çeker ve köyünde tabii bir hayata döner. Ancak hastalanır. Aklı başına gelir. Tekrar eski Alonso olmuştur. Sancho''nun onu yine kandırmasına müsade etmez, artık tüm hayallerinden vazgeçmiştir. Bütün malını fakirlere miras olarak bırakarak ölür.
', N'~/resimler/ispanyol1.jpg', CAST(N'2022-01-14T16:50:00' AS SmallDateTime), 8, N'CERVANTES', 9)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (21, N'TOM SAWYER', N'Tom Sawyer  Huckleberry Finn –  Polly Teyze – Red Joe ', N'Tom Sawyer, St. Ptersburg kasabasında Polly teyzesi, üvey kardeşi Sid ve Polly teyzesinin kızı Mary ile birlikte yaşamaktadır. Tom, yaramazlığı ile kasabaya ün salmıştır. Polly teyzesi onu ne kadar severse sevsin yine de kızmadan edememektedir.

Tom’un, Amy isimli bir kız arkadaşı vardır fakat kasabaya yeni taşınan Becky, Tom’un gönlünü çalmıştır.

Tom, derste aldığı ceza sonrası Becky ile tanışma fırsatı bulmuş ve Becky’nin yanına oturmuştur. Bir şekilde Becky’i etkilemiş ve onun gönlünü çalmıştır. Bu iki çocuk okul dışında da vakit geçirmeye başlamıştır. Tom Becky’e evlenme teklif etmiş ve kendilerince nişanlanmışlardır. Tom, eski sevgilisi Amy ile de nişanlandığını ağzından kaçırınca Becky, Tom’a çok sinirlenmiş ve onu yanından kovmuştur.

Canı sıkılan Tom gezerken kasabanın en sevilmeyen çocuğu Huck ile karşılaşır ve Huck’ın elinde bir ölü kedi vardır. İki kafadar arkadaş olur ve ölü kedinin siğillerden kurtardığına inandıkları için de dolunay sırasında kedi ile beraber mezarlığa gitmeye karar verirler. Mezarlıktayken karanlıktan birtakım sesler duyarlar ve kasabanın en azılı haydutlarından olan Muf Potter’ı, Kızılderili Co’yu ve Doktor Robinson’u bir mezarı kazarken görür. Haydutlar, Doktor Robinson’dan para isteyince kavga çıkar. Beklenmedik bir şekilde Kızılderili Co Potter’a vurur ve Potter bayılır. Co, doktoru kalbinden bıçaklar ve bıçağı Potter’ın eline tutuşturur. Potter uyandığında zaten sarhoş olmasının verdiği etkiden dolayı da cinayeti kendisinin işlediğini kabul etmiştir. Çok korkan çocuklar, olay yerinden koşarak kaçmışlardır.

Tom evde mutlu değildir. Becky ile aralarının da bozuk olması iyice canını sıkmaktadır. Tom, buralardan uzaklaşmayı ve büyük bir adam olmayı kafasına koymuştur. Huck ile beraber korsan olmaya karar vermişler ve Tom ’un kankası olan Joe Harper’ı da yanlarına alarak gece yarısı adaya doğru sandalla yola çıkmışlardır. Günlerin geçmesi üzerine bütün kasaba bu çocukların nehirde boğulduğuna inanmış ve büyük bir üzüntü içinde cenaze töreni düzenlemeye karar vermişlerdir. Tom, arkasından kimin ne kadar üzülmüş olduğuna merak eder ve bir gece yarısı eve gider. Teyzesinin harap haline çok üzülen Tom adaya döner ve ada şartlarından bıkmış olan üç çocuk geriye dönmeye karar verirler. Pazar günü kilisede düzenlenen cenaze törenine giderler. Önce herkes çok sevinir fakat daha sonra çok kızarlar. Tom okulda çok havalı olur ve herkes ona saygı duymaya başlar. Bir kişi hariç, bu kişi Becky ’den başkası değildir. Becky, Tom ‘un Amy ile olan yakın ilişkisini kıskanır ve o da başka bir çocuk ile yakınlaşmaya başlar. Tüm bunlar olurken de bir yandan Muf Potter’ın davası görülür. Muf Potter’a hapiste de yardım etmeye çalışan Tom vicdanına yenilir ve hayatını tehlikeye atarak mahkemede gördüğü her şeyi anlatır. Kızılderili hakkında ölüm kararı verilir fakat Kızılderili kaçar. Tom’un korkulu günleri başlamıştır.

Bu olayın ardından Tom kasabada kahraman muamelesi görür. Tom rahat durmaz ve arkadaşı Huck ile beraber hazine aramak için bir harabeye girerler. Harabenin içinde yabancı olmayan bir sima ile karşılaşırlar. Kızılderili Joe ve bir arkadaşı perişan bir kılıkta altınlarını ve paralarını gömmek için harabeye gelirler. Saklanan çocuklar Joe’nın altınlarını almaya karar verirler.

Joe ve arkadaşı ortalıkta gözükmez ve olaylar biraz duraklar. Tom, Becky ile barışır ve Becky’nin ailesinin önderliğinde düzenlenen pikniğe giderler. Mağaraların dehlizlerinde Tom ve Becky kaybolur. Bütün çocuklar vapura doluşur ve kasabaya dönülür. Çocuklar arkadaşlarında kalacaklarını söyledikleri için anneleri ancak ertesi gün yokluklarını fark eder. Herkes iki kaybı aramaya başlar. Çocuklar ise mağarada çıkış aramaya çalışırlar fakat gün geçtikçe açlık ve susuzlukla beraber bastıran umutsuzluk çocukları adeta yiyip bitirir. Tom mağaranın dehlizlerinde çıkış ararken Kızılderili Joe’yu görür. Bu durum işleri daha da zorlaştırır. Derken çocuklar ölmek üzereyken çıkış yolu bulurlar. Kasabaya döndüklerinde herkes onları karşılar. Bütün kasaba çok sevinir. Becky’nin babası mağaranın tüm girişlerini demirle kapattırır. Bunun üzerine Tom içerde Kızılderili Joe’nun olduğunu söyler. Mağaraya gidildiğinde Kızılderili Joe’nun cansız bedeniyle karşılaşırlar. Tom güvende olmanın verdiği huzura rağmen kendi yaşadıklarını düşünerek aç susuz can veren hayduta üzülür. Tom’un aklına Joe’nun altınları ve parası gelir. Huck ile bunu paylaşır ve mağaraya gidip hazineyi çıkarmaya karar verirler. Yanlarında kaybolmamak için ip ve mum götürürler. Kızılderili’nin sembolünü bulup kazdıklarında altına kavuşmuşlar. Artık ikise de zengindir.

Tom mağaradayken Huck’ın başından bir sürü olay geçmiştir. Huck, haydutları takip etmiş ve Bayan Daglıs’ı ölümden kurtarmıştır. Yalnız yaşayan Bayan Daglıs evsiz Huck’ı evlat edinmiştir. Huck alıştığı hayattan çok farklı olan bu düzene alışmakta zorlanmış ve kaçmıştır. Tom arkadaşını bulup geri dönmek için ikna eder. Yeni maceralara atılmak için sözleşen iki kafadar evlerine giderler.
', N'~/resimler/amerikan1.jpg', CAST(N'2022-01-14T16:52:00' AS SmallDateTime), 9, N'Mark Twain', 4)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (22, N'FARELER VE İNSANLAR', N'George Milton Lennie Small:  Candy Candy''nin köpeği:  Curley: . Curley''nin karısı:  Slim:  Crooks:  Carlson:  Whit:  Patron:  Clara teyze: ', N'Zeki ve kinik bir adam olan George Milton ile ismiyle tezat oluşturacak şekilde iri ve çok güçlü ama akli dengesi bozuk olan Lennie Small, Büyük Bunalım sırasında çiftlikten çiftliğe dolaşarak iş arayan göçmen toprak işçilerinden ikisidir. Kaliforniya''daki Salinas Vadisi''nde, Soledad yakınlarında bir çiftlikte iş bulurlar ve para biriktirmek için çalışmaya başlarlar. Kendilerine ait bir parça toprak edinip oraya yerleşmeye dair ortak bir hayalleri vardır. Lennie bu hayali George''a defalarca anlattırır ve en çok da besleyip okşayabileceği yumuşak tavşanlarla ilgili kısmını sever. George da Lennie''nin bu takıntısını, onu korumak için, başını belaya sokarsa tavşanlara bakmasına izin vermeyeceğini söyleyerek kullanır. İkili, daha önce çalışmakta oldukları Weed''deki çiftlikten, Lennie''nin yumuşak şeylere dokunma takıntısıyla bir genç kadının elbisesini okşamasının tecavüz girişimi olarak görülmesi sebebiyle kaçmışlardır. Yeni çiftlikte, ikilinin hayali gerçek olmaya daha da yaklaşır. Yaşlı ve bir elini çiftlikte kaybetmiş bir işçi olan Candy, ikiliyle parasını birleştirmeyi ve böylece ay sonunda hayallerindeki çiftliği satın almayı önerir. Ancak bu hayal, çiftlik sahibinin oğlu olan Curley''nin genç ve güzel karısının Lennie tarafından saçını okşamaya çalışırken yanlışlıkla öldürülmesiyle suya düşer. Curley hemen bir linç grubu oluşturur. Diğer işçiler gibi yalnızlık ve acı dolu bir hayat sürmeye mahkûm olduğunu anlayan George, arkadaşının, intikam peşindeki Curley tarafından vahşice öldürülmesini istemez. Lennie''yi onlardan önce bulur, hayallerindeki çiftliği anlatarak sakinleştirir ve kafasının arkasına dayadığı silahı ateşleyerek öldürür.', N'~/resimler/alman2.jpg', CAST(N'2022-01-14T16:54:00' AS SmallDateTime), 7, N'JOHN STEİNBECK', 4)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (23, N'GÜNEŞ DE DOĞAR', N' Lady Brett Ashley, Robert Cohn, Brett Ashley, Jake Barnes, Pedro Romero, Bill Gorton', N'Güneş de Doğar , 1920''lerin ortalarında Avrupa''da dolaşırken bir grup genç Amerikalı ve İngiliz gurbetçiyi takip eder. Hepsi alaycı ve hayal kırıklığına uğramışların üyeleriBirinci Dünya Savaşı sırasında (1914–18) reşit olan Kayıp Nesil . Romanın ana karakterlerinden ikisi, Leydi Brett Ashley ve Jake Barnes , Kayıp Nesil''i simgeliyor. Romanın anlatıcısı Jake, bir gazeteci ve Birinci Dünya Savaşı gazisi. Savaş sırasında Jake onu iktidarsız kılan bir yaralanma yaşadı. (Başlık, dolaylı olarak Jake''in yaralanmasına ve bundan dolayı artmayan bir şeye atıfta bulunur.) Savaştan sonra Jake , arkadaşı Yahudi yazar Robert Cohn''un yanında yaşadığı Paris''e taşındı .
Jake''in eski sevgilisi Brett de Paris''te yaşıyor. Jake ve Brett, gönüllü bir hemşire olan Brett, Jake''in yaralarının tedavisine yardım ettiği savaş sırasında tanıştı ve aşık oldular. Cohn , Brett''e olan romantik ilgisini Jake''e itiraf ettiğinde , Jake, bir İskoç savaş gazisi olan Mike Campbell ile evlenmek üzere nişanlanan Brett''le bir ilişki kurmaması konusunda onu uyarır. Hem Brett hem de Cohn sonunda Paris''i terk eder: Brett, San Sebastian''a (İspanya''da küçük bir sahil kasabası) ve Cohn kırsala doğru yola çıkar .
Ayrılmalarından birkaç hafta sonra yazar Bill Gorton (Jake''in diğer arkadaşlarından biri) Paris''e gelir. Birlikte, Jake ve Bill katılmak üzere İspanya''ya gitmeye karar Fiesta de San Fermin içinde Pamplona boğalar ve çalışan görmek için, İspanya, bullfights . Jake ve Bill ayrılmadan önce İspanya''dan yeni dönen Brett ve nişanlısı Mike ile karşılaşır. Brett ve Mike, Jake ve Bill''e Pamplona''ya kadar eşlik etmeyi ister. Özel olarak Brett, Jake''e son birkaç haftayı İspanya''da Cohn ile geçirdiğini açıklar.

Bill ve Jake, Cohn ile tanıştıkları Fransa''nın güneyine giden bir trene binerler. Bill, Jake ve Cohn, sonunda Brett ve Mike''ın da katıldığı Pamplona''ya birlikte giderler. Montoya adında bir adamın sahibi olduğu yerel bir otelde kalıyorlar. Montoya bir boğa güreşi tutkunu ve yabancıları sporla tanıştırmak için can atıyor. Brett ve Jake özellikle boğa güreşlerinden büyülendi ve Brett, Pedro Romero adlı 19 yaşındaki bir boğa güreşçisi tarafından büyülendi. Mike, Cohn ve tesadüfen Jake, Brett konusunda tartışırken, Brett Romero ile Madrid''e gider.
Festival bittikten sonra Jake, Mike ve Bill Pamplona''dan ayrılır. Fransa''nın güneyinde bir gecenin ardından Jake, İspanya''ya dönmeye karar verir. Kısa süre sonra Brett''ten Madrid''de yardım isteyen bir telgraf alır. Jake hemen Madrid''e gider ve burada Brett''in Romero''yu kendisini bozma korkusuyla gönderdiğini öğrenir. Roman, Jake ve Brett''in Madrid''de bir taksiyle konuşmasıyla olağanüstü bir şekilde sona erer. Romanın son satırlarında Brett, Jake''e birlikte harika vakit geçirebileceklerini düşündüğünü söyler. Jake, "Evet, öyle düşünmek güzel değil mi?"
', N'~/resimler/amerikan3.jpg', CAST(N'2022-01-14T16:55:00' AS SmallDateTime), 8, N'ERNEST HEMİNGWAY ', 4)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (24, N'ÜÇ SİLAHŞÖRLER', N'•	Aramis •	Athos  •	D''Artagnan •	Demir Maske  •	XIV. Louis  •	Porthos  •	XIII. Louis', N'17. yüzyılın ortalarında, Melung kasabasında yaşayan Gaskonyalı bir aile vardır. Bu ailenin babası, gençliğinde kralın sarayında silahşör olmak istemiş ama başaramamıştır. “Ben yapamadım, en azından oğlum yapsın” düşüncesiyle, gençliğe daha yeni adım atmış oğlunun eline bir mektup tutuşturarak kasabaya M. de Tréville’nin yanına göndermiştir. Adı D’Artanyan olan bu genç, yolda çeşitli kavgalara dâhil olmuş ve geçtiği yerlerde yadırganmıştır. Sonunda kasabaya ulaştığında insanlar yine onu yadırgayıp alay etmişlerdir. D’Artanyan dayanamayıp yine kavga etmiş ama bu sefer kendini yerde baygın bulmuştur. Onu bayıltanlar, D’Artanyan’ın cebinden babasının yazdığı mektubu alıp gitmişlerdir. D’Artanyan ise bu durumu hancıdan bilmiş ve üzerine saldırmıştır. Mektubun onda olmadığını öğrenince adamı serbest bırakıp saraya doğru yola çıkmıştır. Sarayda, babasının mektup yazdığı adam olan M. de Tréville’yi bulup durumu anlatmıştır. Fakat tam o anda sarayın bahçesinde, cebindeki mektubu çalan adamı görmüş ve onu yakalayabilmek için hızla atılmıştır. Koşarken, kralın silahşörlerinden biri olan Athos’a çarpmış ve özür dilemiştir ama Athos özrü kabul etmeyerek D’Artanyan’ı on birde düelloya çağırmıştır. El mahkûm kabul eden D’Artanyan, koşmaya devam etmiş ve bu sefer de kralın bir diğer silahşörü olan Portos’a çarpmıştır. Her ne kadar özür dilese de Portos da özrü kabul etmemiş ve onu saat on üçte düelloya çağırmıştır. D’Artanyan, tüm bu harcadığı zamandan sonra kovaladığı adamı elinden kaçırmıştır. Bunun üzerine, düelloya söz verdiği Athos’un yanına gitmeye karar vermiş ama yolda giderken bir başka silahşör olan Aramis ile de sorun yaşamış, onunla da saat on dört için randevulaşmışlardır.

Düello için Athos ile anlaştıkları yere gelince Athos’un, yanında şahit olarak Portos ve Aramis’i getirdiğini görmüştür. Birbirleriyle bir iki kelam edince, aslında dördünün de iyi birer insan olduklarını ve iyi bir şekilde anlaştıklarını görmüşler fakat bu düelloyu yapmayı kendilerine görev bildiklerinden vazgeçmemişlerdir. Ülkede de birçok kişi tarafından “Üç Silahşörler” olarak tanınan bu üç adam; cesur, korkusuz ve aynı zamanda kararlıdırlar. D’Artanyan, adamların hırslarını ve kararlılıklarını görünce bu düellodan sağ çıkamayacağını, öleceğini düşünmüştür. Tam düelloya başlayacaklardır ki, kardinalin askerleri oraya basmıştır. O zamanlarda gizlice dövüşmek yasak olduğundan, askerler silahşörlere saldıracaklardır. D’Artanyan ise askerlerin değil de silahşörlerin yanında yer almaya karar vermiş ve silahşörler ile birlikte askerlere karşı çarpışmıştır. Bu kalabalık düelloyu kazanan Üç Silahşörler ve D’Artanyan, M. de Tréville tarafından takdir edilmiştir. Aynı zamanda bu düellonun sonucunda Üç Silahşörler, D’Artanyan’ı yanlarına almaya karar vermiş ve bunu kendisine söylemişlerdir. Artık aralarında hiçbir husumet kalmayan bu arkadaşlar, her zaman birbirlerinin yanında olup olumsuzluk ve adaletsizliğe karşı baş kaldırmışlardır.
', N'~/resimler/fransız1.jpg', CAST(N'2022-01-14T16:58:00' AS SmallDateTime), 8, N'Alexander Dumas', 10)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (25, N'SEFİLLER ', N'Jan Valjean:  Javert:  Mösyö Beinvenu Fentine:  Cosette:  Albay Baron Georges Pontmercy: ', N'Sefiller, Jan Valjean (Jan Valjan) ve polis müfettişi Javert (Javer) arasında sürüp giden bir kovalamacanın, kız kardeşinin çocukları için ekmek çaldığı için beş yıla mahkum edilen Jan Valjean’ın öyküsüdür.
Jan Valjean, -yalnızca- bir somun ekmekten dolaya kürek cezasına çarptırılır, birkaç kez kaçma girişimiyle cezası on dokuz yıla çıkar. 1815’te serbest kalır, ama hapisten sonra inançlarını yiritirmiş, topluma öfke ve kin duymaktadır. Sefil bir halde "D" kasabasına gider, burada kasabanın piskoposundan gördügü iyilikle ruhu aydınlanır. Çünkü Piskopos ona çok iyi davranır. Jan Valjean yıllar sonra böylesine güzel bir davranış karşısında çok mutlu olur. Ne var ki Jan Valjean bu güzel davranışı görmez, Piskoposun gümüş yemek takımlarını çalmakla karşılık verir. Ancak yakalandığında polis, yüzleştirmek için Piskoposun karşısına getirdiğinde ise, Piskopos yine güzel davranışın bir başka seçkin örneğini verecek, yemek takımlarını kendisinin hediye ettiğini söyleyecek, dahası ona "Şamdanları unutmuşsun" diyecektir.
Jan Valjean, bu kez Piskopostan özür dileyip artık hayata dürüst ve erdem sahibi iyiliksever bir insan olarak yeniden başlayacağına söz verir. Fransa’nın kuzeyinde ucuz mücevher imalatçılığı yaparak yaşamaya başlar. Geçmişini gizler, kısa sürede zengin olur ve herkesin sevgisini kazanarak, kasabaya belediye başkanı seçilir.
Ne var ki Jan Valjean’ın geçmişini gizlemesi kuşkulan üzerine çeker. Polis Javert, bir hırsızlık olayından yola çıkarak, araştırmalara başlar. Konu "D" kasabasındaki hırsızlık olayına kadar gelir. Jan Valiean’ı tutuklayacaktır ki, aynı adı taşıvan bir başkası tutuklanır. Bunun üzerine polis Javert, Jan Valjean’dan özür diler, böyle bir yanlışlık karşısında istifa etmek ister, ancak istifası kabul edilmez. Konu kapanır. Ne var ki Valjean’ın ahlâkı, kendi yerine bir başkasının hapsedilmesine izin vermez. Mahkemeye gider, gerçeği anlatarak, suçlu olduğunu söyler. Teslim olur ve hapisaneye girer. Bir gece yattıktan sonra kaçar.
Jan Valjean, teslim olmadan önce sakladığı -hak ederek kazanılmış- paralanın alır, eski bir fahişe olan Fantina’nın ölümünden sonra üvey anne babası tarafindan kötü yetiştirilen, Fantina’nın kızı Cosette’i (Kozet) bulur ve onu da yanına alarak bir manastıra sığınır. Manastırın bahçıvan olarak çalışmaya başlar. Evlat edindiği Cosette ise, rahibe okuluna gider. Sanki polis müfettişi Javert’den kurtulmuş gibidir. Güvenlik içinde yaşar.
Yıllar böyle sakin geçerken, Cosette’in genç ve güzel bir genç kız olmasıyla değişir. Cosette, babası Napolyon ordusunda subaylık yapmış birinin oğlu olan öğrenci Marius’a (Maryüs) âşık olur. Zengin dedesi tarafindan büyütülen Marius, her zaman haklıdan yana olan Jan Valjean gibi, 1832’de isyan eden sosyalistlerin safındadır.
Cosette ile Marius, Paris’in Luxemburg Gardens adındaki parkında tanışırlar ve Valjean’ın kendisini gizli tutmasına rağmen, gizli gizli mektuplaşırlar. Paris ayaklanmıştır. Sosyalistler, 1832’de, Paris’te hanedânlığa karşı başarısız kalan bir başkaldırma hareketine başvururlar. Marius ve arkadaşları, bu başkaldırıya katılırlar. Jan Valjean da onların içindedir. Paris kanla yıkanırken, Javert ile Jan Valjean yine karşı karşıya gelirler. Jan Valjean, Javert’i ve Marius’ü ölümden kurtarır. Javert, Valjean’ı tutuklamaz. Valjean da fırsattan yararlanıp Javert’i öldürmeye kalkmaz. Ancak bu soylu davranış karşısında bütün inandığı değerlerin sarsıldığını gören Javert, hayatında ilk kez olarak, bir mahkumun, kanuna saygı duyan bir vatandaştan daha iyi bir insan olacağına inanır. Bir polis memuru olarak bugüne kadar sahte olasılıklara göre işleri yürüttüğü inancına varır. Valjean’ı tutuklama yerine kendini öldürür. Başkaldıranların durumu parlak değildir. Marius ağır yaralanır ve Valjean onu yeraltındaki kanalizasyonlardan kaçırarak kurtarır. Büyükbabasının evine getirir. Kendisini kimin kurtardığını bilmemektedir.
Cosette’in bu genci sevdiğini anlayan Valjean, onların arasına girmemeye karar verir. Cosette’nin Marius’u sevdiğini, onunla evlenmek istediğini anlar. Cosette’ye büyük miktarda para verir. Şimdi bir barones olan Cosette’nin eski bir kürek mahkumunun kızı olarak kendisinin bilinmesini istemez ve yalnız yaşamak ister. Oysa Marius, hayatını kurtaran kişinin Valjean olduğunu öğrenmiştir. İki genç, ölüm yatağında son anlarını yaşayan Valjean’a koşarlar. Yatağında onları karşılar. Bu karşılaşmada duygusal anlar yaşanır. Her üçü de gözyaşlarını tutamaz. Ölüm yatağında bile onların mutlu olmasını dile getirir. Yıllarca önce piskoposun büyük bir erdemli davranışla kendisine hediye ettiği ve böylece ruhunu kazandığı gümüş şamdanları Cosette’e verir.
Cosette ve Marius evlenirler. Zaman içerisinde iyice yaşlanan Jan Valjan da yatağa düşer bir süre sonra da ölür.
', N'~/resimler/fransız2.jpg', CAST(N'2022-01-14T17:00:00' AS SmallDateTime), 9, N'Victor Hugo', 10)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (26, N'VADİDEKİ ZAMBAK', N'Félix de Vandenesse Madam de Mortsauf Mösyö de Mortsauf:  Lady Dudley:  Natalie de Manerville: ', N'Felix de Vandennesse aristokrat ailesinin sıcak sevgisinden yoksun, otoriter bir ortamda yetişmiş, içine kapanık bir gençtir. Yüksek öğrenimini Paris''te tamamladıktan sonra Tours''a ailesinin yanına döner. Bir gün katıldığı baloda güzelliğiyle kendisini büyüleyen genç bir kadınla karşılaşır. Bu karşılaşmaların arkası da gelir ve tanışırlar.
Henriette, evlidir, kocası bencil ve huysuz bir adamdır. Henriette mutsuz bir hayat sürmesine karşın kocasına bağlıdır. Felix, Kontes Henriette de Mortsauf adındaki bu genç kadının güzelliğini, va dinin adı olan "Zambak"la özdeşleştirir. Felix, Hen riette''nin sağlam kişiliği ve ağırbaşlılığı karşısında duygularını bastırarak onunla arkadaşlık etmekle yetinmeye çalışır. Henriette de Felix''i adeta çocuğu gibi sever ve ona büyük bir güven duyarak tüm sır larını açar. Bir gün, Felix sarayda görev almak üzere Paris''e gitmeye karar verir. Bu ayrılık ikisi için de çok güç olur. Henriette yolda okuması şartıyla Fe lix''e bir mektup verir. Bu mektupta ona duyduğu derin aşkı bir anne sevgisi olarak nitelemeye çalı şır ve Felix''e görevinde başarılı olması için öğütler vererek birtakım yollar önerir.
İki yıllık bir ayrılıktan sonra tekrar görüşürler. Henriette''nin kocası uzun süren bir hastalığa ya kalanınca Henriette ile Felix arasındaki ilişki daha da derinleşir. Fakat bir süre sonra Felix, Paris''e dönmek zorunda kalır. Felix Paris''teki hayatı sıra sında, Lady Dudley adında bir kadınla tanışır. Onun gösterişinden etkilenir ve ona âşık olduğunu zanneder. Bu olayı öğrenen Henriette kederinden hastalanır. Çünkü Felix''in aşkına gönlünce karşılık verememiştir; ama onu kızına eş olarak seçmiştir. Henriette''nin hastalandığını öğrenen Felix, Tours''a gelir. Ancak geç kalmıştır, ölmek üzere olan Henri ette son nefesini vermeden Felix''i sevdiğini ve affettiğini itiraf eder, kızıyla evlenmesini vasiyet eder. Fakat kızı, annesinin ölümüne sebep olan bir adamla evlenmek istemez. Bunun üzerine Felix Paris''e döner. Orada, kendini edebiyata, bilime, politikaya vererek avutmaya çalışır.

', N'~/resimler/fransız3.jpg', CAST(N'2022-01-14T17:03:00' AS SmallDateTime), 8, N'HONORE DE BALZAC', 10)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (27, N'SUÇ VE CEZA', N'Raskolnikov (Rodion Romanoviç  Pulcheia Alexandrovna Raskolnikov  Dunya Raskolnikov:   Razumihin:   Marmelavov:   Sonya:   Luzhin (Piyotr Petroviç  Alyona Ivanovna: ', N'Rodya Romanoviç Raskolnikov yoksul bir gençtir; Petesburg Üniversitesi''ndeki hukuk öğrenimini yarıda bırakır. Aklı Batı''dan gelen siyasi ve felsefi düşüncelerle karmakarışıktır. Nefret edilen, kötü bir tefeciyi öldürecektir. Böylece finansal problemlerini çözerken aynı zamanda dünya kötü, değersiz bir parazitten temizlenecektir. Raskolnikov, daha yüksek bir amaca hizmet eden bir cinayetin kabul edilebilir olduğuna inanır. Bir sürü hesap kitaptan sonra harekete geçer ve kadının evine giderek onu baltayla vahşice öldürür. O anda, Alonya ile birlikte yaşayan ve kimseye bir zararı dokunmayan üvey kız kardeşi beklenmedik biçimde içeri girdiğinden, Raskolnikov onu da öldürmek zorunda kalır. Müşterilerin rehin için bıraktıkları birkaç küçük süs eşyasını alır ve kimseye görünmeden oradan ayrılır.
Kimsenin kendisini görmediğini bildiği halde, Raskolnikov son derecede tedirgindir. Tedirginliği ailesi ve yakın çevresini de etkilenir. Raskolnikov''un hayatında üç kadın vardır. Bunlardan ilki olan annesi, düşkün ve müşfik bir kadındır. Hayatındaki ikinci kadın, kız kardeşi Dounia''dır. Hayatındaki üçüncü kadın ise Marmeladov adındaki işsiz kâtibin kızı Sonia''dır. Raskolnikov onunla ara sıra buluşmuş, arkadaşlık etmiştir. Sonia''nın ailesi, babasının ayyaşlığı yüzünden çok yoksuldur. Sonia, ailesine bakmak için fahişelik yapmaya başlamıştır.
Raskolnikov, öldürdüğü kadının evinden aldıklarını ve diğer delilleri saklayıncaya kadar çılgın gibidir. Ödenmemiş bir borç yüzünden karakola çağrıldığında polislerin yanında baygınlık geçirir. Günlerce hasta yatar. "Katilin cinayet yerine dönmesi" kuralına uygun olarak, yakalanmayı ve rahatlamayı, arınmayı isteyen genç adam, öldürdüğü tefeci kadının evine gelir. Komiserle tanışır ve davranışlarıyla dikkat çekerek soruşturmanın baş zanIısı olur. Zeki bir adam olan Komiser Porfiry Petro viç, Raskolnikov''un katil olduğunu düşünür.
Raskolnikov, Sonia''ya suçunu ve aşkını itiraf eder. Sonia fahişelik yapmasına rağmen inançlı ve iyi yürekli bir kızdır. Ona acır ve suçunu polise itiraf etmesi ve bedelini ödemesi gerektiğini söyler. Sonunda vicdan azabı Raskolnikov''a suçunu itiraf ettirir. Sibirya''ya sürgün edilir. Sonia onun serbest kalacağı günü bekleyecektir. Raskolnikov, yine de aşırı bir pişmanlık duymamaktadır. Fakat Sonia''nın sayesinde kendini dine verebilecektir.


', N'~/resimler/rus1.jpg', CAST(N'2022-01-14T17:04:00' AS SmallDateTime), 9, N'Dostoyevski', 3)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (28, N'SAVAŞ VE BARIŞ', N'•	Prens Nikolai Andreiviç Bolkonski •	Adrey Nikolayeviç Bolkonski:  •	Marya Bolkonski: . •	Kont Krill Vladimiroviç Bezuhov:  •	Nataşa Rostov:  •	Anatol Kuragin:  •	. •	Nikolai Rostov:   Pierre Bezuhov: ', N'Olaylar, RusFransız savaşı esnasında özellikle üç ailenin başından geçmektedir: Bezuhov, Balkonski, Rostov.
Andrey Bolkonski ve olaylar
Prens Nikolai Bolkonski, kızı Marya ile Smolensk civarında bir malikânede yaşamaktadır. Oğlu Andrey ise evlidir ve Saint Petersburg''da oturmaktadır. Mutsuz bir evliliği vardır ve hayatının toplumda yükseleceği zaman anlam kazanacağını düşünmektedir. 1805 seferberliği sırasında, hamile eşini babasının yanına bırakarak Rus ordusuna katılır. Bir süre sonra, kendini göstermeye başlar. Fakat savaşta yaralanır ve yaralı bir hâlde savaş meydanında terk edilir. Andrey bir süre sonra kurtulur ve ailesinin yanına döner. Eşi doğum yaparken ölmüş, doğan oğlu Nikolai ise sağ kalmıştır. Andrey, 1806-1809 yılları arasında ordudan ayrılır ve malikânede hayatının anlamını sorgular. Sürekli yeni akımların peşinde koşar. Bir gün, Kont Uya Andreiç''in kızı Nataşa ile arkadaşlık etmeye başlar ve ona âşık olur. Fakat babası bir süre için evlenmelerine izin vermez. Nataşa ile nişanlılığını duyurmaz. Nataşa''yı bir süre şehirden ayrılmak zorunda olduğu için Pierre Bezuhov''a emanet eder.
Nataşa, Pierre''in kötü yürekli karısı Elena''nın ahlaksız emellerine alet olur. Elena, Nataşa''yı kardeşi Anatol Kuragin''le tanıştırır. Aralarında bir ilişki başlar. Oysa Anatol evlidir. Nataşa onun evli olduğunu anlayınca hata yaptığını kabullenir. Bu ilişkiyi duyan Andrey hüsrana uğrar.
Andrey, hayatına neşe katan Nataşa''nın ihanetini kabullenemez. Tekrar orduya katılır. Bu arada babası kalp sektesinden ölür. Marya malikânede yapayalnız ve savunmasız kalır. Nataşa''nın kardeşi ve Andrey''in arkadaşı Nikolai Rostov ona yardım eder. Bu arada savaşta yaralanan Andrey Moskova''ya getirilir. Nataşa ve ailesi onu bulur. Nataşa ile Andrey barışırlar. Fakat Andrey kısa bir süre sonra ölür ve oğlu Nikolai''ı Rostov''la evlenen Marya büyütür.
Pierre Bezuhov ve Olaylar
Pierre, Kont Bezuhov''un gayrimeşru çocuğudur. Romanın başında ölmek üzere olan babasının başı ucundadır. Babası kendisini nüfus kütüğüne geçirmiş ve yüklü bir mirasın vârisi olmuştur. Fakat Kont''un ilk vârisi olan Vasili Kuragin bu vasiyetnameyi yok etmeye çalışır, başaramaz. Bunu beceremeyince Pierre''i kandırır ve kızı Elena ile evlendirir. Elena, tutkularının esiri olan, ahlaksız fakat sosyetenin önde gelen kadınlarından biridir. Pierre, onun başkaları ile olan ilişkilerine anlayınca ayrılırlar.
Pierre, mason teşkilatına katılır. Bu akımın etkisiyle malikânesinin bulunduğu yerde okul ve hastane yapmaya kalkar. Fakat masonlarla ilgili olarak hayal kırıklığına uğrar bir süre sonra.
Pierre, aynı zamanda Andrey''in en yakın arkadaşıdır. Onun Nataşa ile birleşmesi için elinden geleni yapar; fakat başarılı olamaz. Ayrıca o da Nataşa''ya ilgi duymaya başladığı için ondan uzaklaşır.
İki yıl sonra, Pierre''in karısı ölür. Pierre, Fransız kuvvetlerinin Rusya''yı istila etmesi sebebiyle Borodino savaşına katılır. Savaştan sonra Pierre şekil ve kıyafetini değiştirir ve Napolyon''u öldürmeye karar verir. Fakat esir düşer. Pierre esir düştüğü sırada dine sarılır ve mason anlayışından tamamen uzaklaşır.
Pierre, esaret sonrası malikânesine döner ve Nataşa ile evlenir. Yedi sene geçmiştir. Sosyal idealizmini devam ettiren, mutlu bir aile sahibi biridir.
Nikolai Rostov
Rostov ailesi, daha sıradan ve iyi niyetli İnsanlardan oluşur. Ailenin yeğeni Sonya çocukluğundan beri Nikolai''ı sevmektedir. Nikolai, 1805 yılında bir subay olarak Avusturya''ya gider. Bir çarpışma sırasında yaralanır ve savaştan aşırı derecede korkar. Fakat malikânesine döndüğünde ailesi onu bir kahraman gibi karşılar. O da savaşı olduğundan daha büyük, kendisini daha cesur gösterir. Bundan sonra birkaç savaşa daha katılır ve iyi bir harp subayı olur.
Aile maddi sıkıntı içindedir. Çocukların zengin birileriyle evlenmelerini arzu etmektedirler. Bu yüzden, Nikolai''ın Sonya ile evlenmesine karşıdırlar. Nikolai bir süre sonra kahramanlık madalyasına layık görülür. Bu arada Nikolai, Marya ile ilgilenmeye başlar, bir süre sonra da ona âşık olur. Fakat hâlâ Sonya ile nişanlıdır.
Moskova yanmıştır. Rostov ailesi tüm mallarını, mülklerini kaybeder. 1813''te ailenin reisi kont ölür. Malikâne satılır ve bir başka ev kiralanır. Sonya, bu şartlar altında Nikolai''a bir mektup göndererek aralarındaki ilişkiyi sonlandırır. Marya Bolkonski ile evlenebilecektir. Nikolai, hayatını muhafazakâr bir kır centilmeni olarak sürdürmeye başlar. Aileler arası evlilikle birleşen bir mutlulukla, ülke içindeki barışla roman son bulur.
', N'~/resimler/rus2.jpg', CAST(N'2022-01-14T17:05:00' AS SmallDateTime), 8, N'Tolstoy', 3)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (29, N'İNSANCIKLAR', N'Makar Alekseyevich, Varvara Alekseyevna', N'Kitap fakir bir devlet memuru olan Makar Alekseyevich ile uzaktan akrabası olan Varvara Alekseyevna arsındaki ilişkiyi konu alır. Mektup şeklinde yazılan bu kitap aslında klasik bir ifade ile dönemin Rusyasının aynasıdır. İnsanların nasıl ekonomik sorunlar yaşadığını bunları nasıl karşıladıklarını ve bu sıkıntılar içinde birbirleri ile olan dayanışma ve yardımlaşmaları konu alır. Aslında hikayede gizlenmiş bir aşk hikayesi de vardır. Makar ve Varvara sürekli birbirleri ile mektuplaşır birbirlerine destek olurlar. Makar elinde olan azıcık bir varlığı bile Varvara için harcamaktan ve ekonomik sıkıntıya girmekten çekinmez. Ama sonunda ikisininde tüm kaynakları tükenir ve umutsuzluğa sürüklenirler. Varvara zengin bir adamla tanışır ve onunla evlenmeye karar verir. Başta makar da bu konuya olumlu yaklaşır ama Varvara gittikten sonra onsuz yaşayamayacağını anlar…

İnsancıklar yaşlı bir kâtibin çok uzak bir akrabası olan küçük bir kıza olan yakınlığını (aşkını) ve ona karşı utangaç saygın çabalarını anlatır. Zorla geçinen ve kendisi bakılmaya muhtaç olan yaşlı kâtip kendini bu genç kıza karşı sorumlu hisseder. Genç kızın tüm ekonomik gereksinimlerini karşılamayı kendisi için bir zorunluluk olarak kabul eder yaşlı adam. Oysa kalın kafalı bu yaşlı memurun ceketinin düğmeleri bile dökülüyordu giyecek doğru dürüst elbisesi yoktu. Adamcağız genç kıza öyle bağlıdır ki laf olur diye doğru dürüst-kızın kendisini sık sık çağırmasına karşın-kızın evine gitmez. Hep mektuplaşarak görüşmüş olur paraları başkasıyla yollar. Ve mektuplarında çokça anacığım kızım diye hitap eder. Bu eserde daha çok acıma duygusu egemendir. Yoksul genç kız sonunda kendisine evlenecek bir adam bulmuştur. Ve yaşlı kâtip son mektubunda-nikâhtan sonra kocasıyla gidecek genç kıza-şöyle seslenir: “(…) Bundan sonra kime mektup yazacağım ben? Söyleyin meleğim artık kime “Anacığım…” diyeceğim? Sizi artık nasıl göreceğim melekciğim? Öleceğim Varenka mutlaka öleceğim kalbim bu acıyı kaldırmaz. Tanrı’nın nuru gibi kendi kızımmışçasına sevdim sizi tamamen sevdim.

Salt sizin için yaşıyordum siz varsınız diye belgeleri temize çekiyor gezip dolaşıyor hissettiklerimi mektuplara aktarıyordum. Belki farkında değilsiniz fakat böyleydi. Bizi terk edip gidemezsiniz küçük dostum. Gidemezsiniz çocuğum olamaz bu. Bakın yağmur iniyor bu soğuğu göğüsleyecek ölçüde sağlıklı değilsiniz. Arabanız da koruyamaz sizi mutlaka soğuk alırsınız. Daha şehir sınırlarındayken arabanız yuvarlanır parça parça olur. Biliyorsunuz Petersburg arabaları sağlam değildir. (…)” Genç kıza para yetiştirebilmek için evde belgeleri temize çekerek fazladan çalışan ve bu son mektubunda bile kızım diyecek kadar utangaç olan bu yaşlı adamın aşkı böylesi açıklanamayandı. Hele gitmesini engellemek için söylediği araba devrilmesi bahanesi tam bir trajikomik durumdu.
', N'~/resimler/rus3.jpg', CAST(N'2022-01-14T17:06:00' AS SmallDateTime), 6, N'DOSTOYEVSKİ', 3)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (35, N'FATİH HARBİYE', N'Şinasi ve Macit, Neriman ', N'Neriman''la Şinasi çocukluk arkadaşlarıdır. Tanıdıkları ilk karşıt cins birbirleridir. İlk başta ikisi de birbirlerini seviyorlardı. Okula beraber gidip geliyorlardı. Üniversite de bile beraberdiler. Neriman''ın babası Faiz Bey''dir ve Şinasi''yi de çok sevmektedir. Bazı geceler Faiz Bey''in evinde saz çalarlar ve sohbet ederlerdi. Herkese bir gün Şinasi ile Neriman''ın evleneceğini düşünüyordu.
Giderek Neriman Şinasi''den soğumaya başladı. Neriman oturduğu mevki olan Fatih''I, sevmemektedir. Çünkü Fatih, doğuyu, gelişmemişliği ve eskiyi temsil ediyordu. Oturduğu mahalle çok eskiydi ve evler de virane gibiydi. Bir gün Macit denilen yakışıklı, zengin ve kibar birisiyle tanışır. Macit Harbiye''de oturuyordu. Harbiye, gelişmişliği ve batıyı simgeliyordu. Macit ile bir kaç sefer Şinasi''den habersiz buluşurlar. Bir gün Macit Neriman''a balo davetiyesi verir ve baloya davet eder. Nerman baloya gitmeyi çok istemektedir. Ama gitmesi için babasının iznini almak zorundadır. Tam babasına söyleyecekken babası ona Şinasi ile evlenmesini teklif eder. Hemen reddetmez ve 2-3 ay mühlet ister. Ve bolaya Şinasi ile gitmesi koşuluyla da izin alır. Elbise için vitrinleri gezmeye çıktığında dayısının kızlarına uğrar. Çünkü dayısının kızları bu işlerde oldukça deneyimlilerdir. Eve gittiğinde bir kadının ağlamaktan harap olduğunu görür ve nedenini sorar. Nedeni kızının intiharıdır. Kızı Rus gitariste aşık olmuştur. İkisi de başta çok mutlulardır ve birbirlerini çok sevmektelerdir. Ancak çok sefil bir hayat sürmektedirler. Buda kıza tak etmiştir. Günün birinde zengin bir adamla tanışan kız genci terk eder ve adamla yaşamaya başlar. Artık balolara gidebilmekte ve her istediğini yapabilmektedir. Ancak gerçek mutluluğu bulamamaktadır. Tahsil görmüş bir kız olduğundan hakiki güzelliği aramaktadır. Musiki, mutalaa ve samimiyet; Rus gencinde bunları bulabiliyordu ancak zengin adamda bunları bulamamaktadır.
Sonunda, gence dönmeye karar verir ve aramaya başlar. Büyük uğraşlar sonucu bulur ama genç kabul etmez. Kız bunun verdiği üzüntü ile evine gider ve tabanca ile kendini öldürür.
Hikayeden çok etkilenen Neriman evden izin alarak ayrılır. Kendi evine gelir ve babasına artık baloya gitmek istemediğini ve Şinasi ile evlenmeyi kabul ettiğini söyler..
', N'~/resimler/türk1.jpg', CAST(N'2022-01-16T17:42:00' AS SmallDateTime), 7, N'Peyami Safa', 1)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (36, N'ANKARA', N'Selma Hanım :  Nazif Bey     Binbaşı Hakkı  Neşet Sabit Bey          Murat Bey                 :  Ömer Efendi ve Ailesi   Yıldız Hanım ,  Şeyh Emin                      : ', N'Cumhuriyet inkılabı ile birlikte Anadolu''nun yeniden dirilişi yeniden yapılanması gerekmektedir. Bu yeni yapı üzerine acil bir şekilde bina inşaa edilmelidir. Bunu yapacak olanlar ise dönemin idealist vatansever insanları olacaktır. Ankara romanında ise bunu gerçekleştirecek idealist insanların verdiği mücadele anlatılmaktadır. Bu idealist insanlar inkılap hareketini özümsemiş, milli şuura sahip karakterlerdir. Bu insanlar hayat serüveni içerisinde karmaşık yollardan geçerek romanın son bölümünde bir araya gelirler. Kendi hayatlarını geleceğin çağdaş, modern, öz benliği ile çelişmeyen maddi ve manevi varlığını kaybetmeyen, değerleri ile övünen yeni Türk toplumu yaratma mücadelesi içinde geçer.
Ankara romanı üç bölümden oluşmaktadır;
Birinci bölüm : Sakarya savaşı öncesi ( 1922''ye kadar ).
İkinci bölüm : Cumhuriyetin ilanını izleyen yıllar ( 1926''ya kadar ).
Üçüncü bölüm : Cumhuriyet sonrasının 14 ve 20. Yılları (1937-1943''e kadar ).
Bu üç bölümdeki olaylar yazarın her bölümde ayrı bir kişilik olarak karşımıza çıkardığı Selma Hanım''ın çevresinde geçer. Selma Hanım''ın arayışı Ankara''nın arayışıdır. Yazgısı Ankara''nın yazgısıdır. Yaşamı da Ankara''nın yaşamıdır. Selma Hanım''ın ilişki kurduğu erkekler ise birer simgedirler.
Birinci bölüm: Kurtuluş Zaferi ile sonuçlanan, savaş yıllarındaki Ankara''yı kısa hatlarla açıklamaktadır. Romanın kahramanı olan Selma Hanım hayatını bu üç bölümde üç ayrı erkekle geçiriyor. Milli mücadele yıllarında bir banka şefinin karısıdır. Kocası Nazif''le Ankara''nın yabancısıdır. İstanbul''lu hanım için Ankara''da hayat tek düze ve sıkıcıdır, yoksulluklarla doludur. Boş zamanlarında Hatice Hanım ve Halime Hanım ile sohbet eder. Bu sohbetlerinde gündelik Ankara hayatını tüm çıplaklığı ile gözler önüne serer. Daha sonraları Nazif Bey''in vekil arkadaşı Murat Beyle tanışırlar. Bu sırada binbaşı Hakkı Beyle de tanışırlar. Bu dönemlerde Hakkı Bey''in milli mücadele ruhu ve azmi kendisini fazlasıyla etkiler. Bütün ümitlerin zafer''e bağlandığı, başka hiçbir şeyin ehemmiyetli olmadığı bu devirde, herkesin mütevazı bir hayatı vardır. Yalnız kocası Nazif Bey''in milli davaya bir erkekten beklediği heyecan ve alaka ile bağlanmadığını gören Selma Hanım yavaş yavaş kocası Nazif Bey''den kopmaya başlar. Erkân-ı Harp Binbaşı''sının fikir ve hareketlerine yakınlık duyar. Birinci bölüm Selma Hanım''ın binbaşının cazibesine kendisini kaptırdığı bir zamanda sonuçlanır.
İkinci bölümde Selma Hanım Nazif Bey''den boşanmıştır. Bu bölüm zaferden sonraki Ankara''dır. Selma Hanım eski binbaşı emekli Miralay Hakkı Bey''in karısıdır. Ancak koşullar değişmiş değişen koşullar Cumhuriyet öncesinin kişilerini de değiştirmiştir. Hakkı Bey ordudan, Murat Bey vekillikten ayrılmışlardır. Vurguncu harp zengini şirket meclisi idarelerinde dolaşan, ecnebi gruplarla komisyon işleri yapmaya çalışan Hakkı Bey''in yeni yüzüyle karşılaşırız. Hakkı Bey milli idealleri bir tarafa bırakmış, maddi refah içerisinde sadece kendi hesabına çalışan birisine dönüşmüştür. Bu zümreye göre artık halkçılık diye bir dava kalmamıştır. Bu bölümde halk ile bu zümre arasında nasıl doldurulmaz bir uçurum açıldığını, inkılabı böyle anlayanları, hep kendi lehlerine çekenlerin eleştirisi yer alır. Selma Hanım yeni kocasından da uzaklaşır. Bu sırada muharrir olan Neşet Sabit genç kadını görmek için onların bazı alemlerine iştirak eder. Selma Hanım bu hayatın acılarını onunla paylaşır. Binbaşı Hakkı Bey''den boşanır. Bundan sonraki hayatında toplumsal hizmetlerin en değerlisi olan öğretmenlik görevine atılır.
Son bölüm yazarın hayalindeki Ankara''dır. Yazarın bu hayali Cumhuriyet''in Onuncu Yıl Dönümü Bayramıyla başlar. Gazi Mustafa Kemal''in Türk milletine hitabesi, bir devir başlangıcının, bir yeni sabahın ilk işareti gibi olmuştur. Ankara''nın çehresi değişmiştir. Bundan sonra egoist bir zümrenin zevkine ve menfaatine karşı şiddetli matbuat hücumu başlamıştır. Halk evleri, Toplumsal Mükellefiyet Teşkilatı yeni hayatın odakları olmuştur. Selma Hanım Neşet Sabit''le evlenmiş, bu iki insan yeni hayatın imar ve inşasında elele vererek büyük bir aşkla çalışıyor, yeni değerleri halk yığınlarına götürürler. Harf İnkılabı, Tarih Cemiyeti, Yüksek İktisat Enstitüsü, Halk Evleri gibi daha bir çok alanda büyük atılımlar, büyük yenilikler gerçekleşir. Selma Hanım ve Neşet Sabit fırsat buldukça Anadolu''nun muhtelif yerlerine seyahat eder, bu seyahatlerinde gördükleri yerlerin yeni çehresiyle karşılaşırlar. Anadolu toprağı, suyu, kırı, bayırı, dağı, taşıyla eşsiz güzelliğiyle cennetten bir parça gibi tasavvur ederler, bundan doyumsuz bir haz alırlar. Hele Pınarbaşı''nda düzenledikleri eğlencelerde halk ezgileri ve türküleri çalınır söylenir, sabaha kadar hoşça vakit geçirirler. Roman yazarın bu tasavvuruyla son bulur.
', N'~/resimler/türk2.jpg', CAST(N'2022-01-16T17:47:00' AS SmallDateTime), 8, N'Yakup Kadri KARAOSMANOĞLU', 1)
INSERT [dbo].[Tbl_Kitaplar] ([KitapID], [KitapADI], [KitapKARAKTERLERİ], [KitapÖZETİ], [KitapRESİM], [KitapTARİH], [KitapPUAN], [KitapYAZAR], [KategoriID]) VALUES (37, N'AŞK-I MEMNU', N'Nihal,Bihter,Behlül,Adnan', N'Melih Bey, serbest yaşamayı, eğlenmeyi çok seven Firdevs Hanım''la evlidir.
Firdevs Hanım, kocasını umursamayan, başkalarının aşk tekliflerine cevap veren bir tiptir.
Bir gün Melih Bey, karısının âşıklarına yazdığı aşk mektuplarını bulur ve bir süre sonra üzüntüsünden ölür.
Firdevs Hanım''ın Peyker ve Bihter adlı iki genç kızı vardır. İkisi de anneleri gibi ihtiraslıdır.
Firdevs Hanım, yaşlı olmasına rağmen kızlarıyla her konuda yarışmakta genç ve güzel görünmek için her yola başvurmaktadır. Korktuğu tek şey "valide" olmaktır. Bu yüzden kızlarının evlenmesine karşı çıkar. Ne var ki Peyker, annesini dinlemez ve evlenir.
Romanda bu ailenin yolları, Adnan Bey ailesiyle kesişir. Karısı ölen Adnan Bey kızı Nihal ve oğlu Bülent ile yaşamaktadır. Varlıklı ve kibar Adnan Bey, genç yaştaki Bihter''le evlenir.
Bihter zamanla kocasının yeğeni Behlül''e aşık olur. Firdevs Hanım, kızı olmasına rağmen Bihter''i çok kıskanmaktadır. Bihter''in Behlül''le ilişkisini engellemek için Nihal ile Behlül''ü evlendirmeye çalışır. Behlül, Nihal ile nişan hazırlıklarına başlar. Bihter buna çok üzülür. Aşkını korumak için bir süre mücadele eder; "yasak aşk"ının ortaya çıkması üzerine de canına kıyar. Behlül kaçar, Nihal de hayalleri kırılmış olarak, eskisi gibi babasıyla yaşamaya devam eder.
', N'~/resimler/türk3.jpg', CAST(N'2022-01-16T17:48:00' AS SmallDateTime), 10, N'Halit Ziya Uşaklıgil', 1)
SET IDENTITY_INSERT [dbo].[Tbl_Kitaplar] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Kullanici] ON 

INSERT [dbo].[Tbl_Kullanici] ([KullaniciID], [Ad], [Sifre]) VALUES (1, N'duyg', N'123')
SET IDENTITY_INSERT [dbo].[Tbl_Kullanici] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] ON 

INSERT [dbo].[Tbl_Mesajlar] ([MesajID], [MesajAdSoyad], [Mail], [İcerik]) VALUES (5, N'Oğuzhan', N'oguzhansezer14@gmail.com', N'Site tamamlandı')
INSERT [dbo].[Tbl_Mesajlar] ([MesajID], [MesajAdSoyad], [Mail], [İcerik]) VALUES (6, N'Oğuzhan Sezer', N'oguzhansezer14@gmail.com', N'Güzel bir site')
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Ozetler] ON 

INSERT [dbo].[Tbl_Ozetler] ([OzetID], [OzetADI], [OzetKarakterler], [OzetYazı], [OzetKitapFoto], [OzetYazar], [OzetKisi], [OzetKisiMail], [OzetDurum]) VALUES (4, N'Deneme', N'Deneme Karakterleri', N'DENEMELER', N'deneme.jpg', N'Oğuzhan Sezer', N'Oğuzhan Sezer', N'oguzhansezer14@gmail.com', 0)
SET IDENTITY_INSERT [dbo].[Tbl_Ozetler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Slider] ON 

INSERT [dbo].[Tbl_Slider] ([Resimid], [Resim], [ResimDurum]) VALUES (1, N'~/resimler/alman3.jpg', 1)
INSERT [dbo].[Tbl_Slider] ([Resimid], [Resim], [ResimDurum]) VALUES (2, N'~/resimler/türk1.jpg', 1)
INSERT [dbo].[Tbl_Slider] ([Resimid], [Resim], [ResimDurum]) VALUES (3, N'~/resimler/yunan1.jpg', 1)
INSERT [dbo].[Tbl_Slider] ([Resimid], [Resim], [ResimDurum]) VALUES (4, N'~/resimler/yunan2.jpg', 1)
SET IDENTITY_INSERT [dbo].[Tbl_Slider] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Uyeler] ON 

INSERT [dbo].[Tbl_Uyeler] ([UyeID], [UyeMail], [UyeSifre], [UyeAdsoyad], [UyeKullanici]) VALUES (5, N'duygu@hotmail.com', N'123', N'Duygu delice', N'melek')
INSERT [dbo].[Tbl_Uyeler] ([UyeID], [UyeMail], [UyeSifre], [UyeAdsoyad], [UyeKullanici]) VALUES (6, N'oguzhansezer14@gmail.com', N'12345', N'Oğuzhan Sezer', N'sezer')
SET IDENTITY_INSERT [dbo].[Tbl_Uyeler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Yorum] ON 

INSERT [dbo].[Tbl_Yorum] ([YorumID], [YorumADSOYAD], [YorumMAIL], [YorumTarih], [YorumOnay], [YorumYAZI], [KitapID]) VALUES (11, N'Oğuzhan Sezer', N'oguzhansezer@gmail.com', CAST(N'2022-01-16T21:05:00' AS SmallDateTime), 1, N'Çok güzel bir kitaptı.', 35)
INSERT [dbo].[Tbl_Yorum] ([YorumID], [YorumADSOYAD], [YorumMAIL], [YorumTarih], [YorumOnay], [YorumYAZI], [KitapID]) VALUES (12, N'Oğuzhan Sezer', N'oguzhansezer@gmail.com', CAST(N'2022-01-16T21:05:00' AS SmallDateTime), 0, N'Çok güzel bir kitaptı.', 35)
SET IDENTITY_INSERT [dbo].[Tbl_Yorum] OFF
GO
ALTER TABLE [dbo].[Tbl_Kitaplar] ADD  CONSTRAINT [DF_Tbl_Kitaplar_KitapTARİH]  DEFAULT (getdate()) FOR [KitapTARİH]
GO
ALTER TABLE [dbo].[Tbl_Ozetler] ADD  CONSTRAINT [DF_Tbl_Ozetler_OzetDurum]  DEFAULT ((0)) FOR [OzetDurum]
GO
ALTER TABLE [dbo].[Tbl_Yorum] ADD  CONSTRAINT [DF_Tbl_Yorum_YorumTarih]  DEFAULT (getdate()) FOR [YorumTarih]
GO
ALTER TABLE [dbo].[Tbl_Yorum] ADD  CONSTRAINT [DF_TBL_YORUM_YorumOnay]  DEFAULT ((0)) FOR [YorumOnay]
GO
ALTER TABLE [dbo].[Tbl_Kitaplar]  WITH CHECK ADD  CONSTRAINT [FK_TBL_KITAPLAR_TBL_KATEGORILER] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Tbl_Kategoriler] ([KategoriID])
GO
ALTER TABLE [dbo].[Tbl_Kitaplar] CHECK CONSTRAINT [FK_TBL_KITAPLAR_TBL_KATEGORILER]
GO
ALTER TABLE [dbo].[Tbl_Yorum]  WITH CHECK ADD  CONSTRAINT [FK_TBL_YORUM_TBL_KITAPLAR] FOREIGN KEY([KitapID])
REFERENCES [dbo].[Tbl_Kitaplar] ([KitapID])
GO
ALTER TABLE [dbo].[Tbl_Yorum] CHECK CONSTRAINT [FK_TBL_YORUM_TBL_KITAPLAR]
GO
USE [master]
GO
ALTER DATABASE [Dbo_Books] SET  READ_WRITE 
GO
