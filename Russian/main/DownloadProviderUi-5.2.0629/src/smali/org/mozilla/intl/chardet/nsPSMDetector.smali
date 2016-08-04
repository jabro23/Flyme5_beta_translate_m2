.class public abstract Lorg/mozilla/intl/chardet/nsPSMDetector;
.super Ljava/lang/Object;


# instance fields
.field mClassItems:I

.field mClassRunSampler:Z

.field mDone:Z

.field mItemIdx:[I

.field mItems:I

.field mRunSampler:Z

.field mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

.field mState:[B

.field mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

.field mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    invoke-virtual {p0, p1}, Lorg/mozilla/intl/chardet/nsPSMDetector;->initVerifiers(I)V

    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Reset()V

    return-void
.end method


# virtual methods
.method public Reset()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassRunSampler:Z

    iput-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    iput-boolean v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    iget v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassItems:I

    iput v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    aput-byte v1, v2, v0

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;->Reset()V

    return-void
.end method

.method protected initVerifiers(I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-ltz p1, :cond_2

    const/4 v2, 0x6

    if-ge p1, v2, :cond_2

    :goto_0
    iput-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iput-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsBIG5Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsBIG5Verifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsEUCStatistics;

    aput-object v5, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/Big5Statistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/Big5Statistics;-><init>()V

    aput-object v3, v2, v1

    aput-object v5, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/EUCTWStatistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/EUCTWStatistics;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    aput-object v5, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassRunSampler:Z

    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    array-length v0, v0

    iput v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassItems:I

    return-void

    :cond_2
    move p1, v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    goto :goto_1

    :cond_4
    if-ne p1, v7, :cond_5

    const/16 v2, 0x8

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB2312Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB2312Verifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB18030Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB18030Verifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsHZVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsHZVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    goto/16 :goto_1

    :cond_5
    if-ne p1, v1, :cond_6

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsSJISVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsSJISVerifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    goto/16 :goto_1

    :cond_6
    if-ne p1, v6, :cond_7

    const/16 v2, 0xa

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB2312Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB2312Verifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB18030Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB18030Verifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsBIG5Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsBIG5Verifier;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsHZVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsHZVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    const/16 v2, 0xa

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsEUCStatistics;

    aput-object v5, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/GB2312Statistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/GB2312Statistics;-><init>()V

    aput-object v3, v2, v1

    aput-object v5, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/Big5Statistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/Big5Statistics;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/EUCTWStatistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/EUCTWStatistics;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object v5, v2, v3

    const/16 v3, 0x8

    aput-object v5, v2, v3

    const/16 v3, 0x9

    aput-object v5, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    goto/16 :goto_1

    :cond_7
    if-nez p1, :cond_0

    const/16 v2, 0xf

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsSJISVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsSJISVerifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/nsBIG5Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsBIG5Verifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/mozilla/intl/chardet/nsGB2312Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsGB2312Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Lorg/mozilla/intl/chardet/nsGB18030Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsGB18030Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-instance v4, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-instance v4, Lorg/mozilla/intl/chardet/nsHZVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsHZVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    const/16 v2, 0xf

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsEUCStatistics;

    aput-object v5, v2, v0

    aput-object v5, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/EUCJPStatistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/EUCJPStatistics;-><init>()V

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/EUCKRStatistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/EUCKRStatistics;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/Big5Statistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/Big5Statistics;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/EUCTWStatistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/EUCTWStatistics;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/mozilla/intl/chardet/GB2312Statistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/GB2312Statistics;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    aput-object v5, v2, v3

    const/16 v3, 0xa

    aput-object v5, v2, v3

    const/16 v3, 0xb

    aput-object v5, v2, v3

    const/16 v3, 0xc

    aput-object v5, v2, v3

    const/16 v3, 0xd

    aput-object v5, v2, v3

    const/16 v3, 0xe

    aput-object v5, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    goto/16 :goto_1
.end method
