.class public Lorg/mozilla/intl/chardet/nsEUCSampler;
.super Ljava/lang/Object;


# instance fields
.field public mFirstByteCnt:[I

.field public mFirstByteFreq:[F

.field public mSecondByteCnt:[I

.field public mSecondByteFreq:[F

.field mState:I

.field mThreshold:I

.field mTotal:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x5e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    const/16 v0, 0xc8

    iput v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mThreshold:I

    iput v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteCnt:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteCnt:[I

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteFreq:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteFreq:[F

    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsEUCSampler;->Reset()V

    return-void
.end method


# virtual methods
.method public Reset()V
    .locals 4

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    iput v1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    move v0, v1

    :goto_0
    const/16 v2, 0x5e

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteCnt:[I

    iget-object v3, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteCnt:[I

    aput v1, v3, v0

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
