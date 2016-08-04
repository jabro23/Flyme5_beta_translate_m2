.class public Lcom/android/providers/downloads/ui/ChineseDetector;
.super Lorg/mozilla/intl/chardet/nsPSMDetector;
.source "ChineseDetector.java"


# instance fields
.field public mCharsetResult:Ljava/lang/String;

.field private mSucess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;-><init>(I)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/ChineseDetector;->mSucess:Z

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/downloads/ui/ChineseDetector;->mCharsetResult:Ljava/lang/String;

    .line 13
    return-void
.end method
