.class Lcom/android/providers/downloads/ui/FetchUrlMimeType;
.super Ljava/lang/Thread;
.source "FetchUrlMimeType.java"


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_DISPOSITION_PATTERN2:Ljava/util/regex/Pattern;

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field private static final FILENAME_PATTERN:Ljava/util/regex/Pattern;

.field private static mChineseDetector:Lcom/android/providers/downloads/ui/ChineseDetector;

.field public static sRandom:Ljava/util/Random;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCookies:Ljava/lang/String;

.field private mRequest:Lcom/android/providers/downloads/ui/DownloadRequest;

.field private mUri:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 59
    new-instance v6, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Random;-><init>(J)V

    sput-object v6, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->sRandom:Ljava/util/Random;

    .line 75
    const-string v6, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    sput-object v6, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 78
    const-string v6, "attachment;\\s*filename\\s*[^=]=\\s*\"([^\"]*)\""

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    sput-object v6, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->CONTENT_DISPOSITION_PATTERN2:Ljava/util/regex/Pattern;

    .line 81
    const-string v6, ".*;\\s*filename\\s*=\\s*"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    sput-object v6, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->FILENAME_PATTERN:Ljava/util/regex/Pattern;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    move v3, v4

    .line 89
    .local v3, "validRelease":Z
    :goto_0
    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    move v2, v4

    .line 90
    .local v2, "validId":Z
    :goto_1
    const-string v6, "REL"

    sget-object v7, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    move v1, v4

    .line 93
    .local v1, "includeModel":Z
    :goto_2
    const-string v4, "AndroidDownloadManager"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    if-eqz v3, :cond_0

    .line 95
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_0
    const-string v4, " (Linux; U; Android"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    if-eqz v3, :cond_1

    .line 99
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_4

    .line 102
    :cond_2
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    if-eqz v1, :cond_3

    .line 104
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_3
    if-eqz v2, :cond_4

    .line 107
    const-string v4, " Build/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_4
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 328
    new-instance v4, Lcom/android/providers/downloads/ui/ChineseDetector;

    invoke-direct {v4}, Lcom/android/providers/downloads/ui/ChineseDetector;-><init>()V

    sput-object v4, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->mChineseDetector:Lcom/android/providers/downloads/ui/ChineseDetector;

    return-void

    .end local v1    # "includeModel":Z
    .end local v2    # "validId":Z
    .end local v3    # "validRelease":Z
    :cond_5
    move v3, v5

    .line 88
    goto :goto_0

    .restart local v3    # "validRelease":Z
    :cond_6
    move v2, v5

    .line 89
    goto :goto_1

    .restart local v2    # "validId":Z
    :cond_7
    move v1, v5

    .line 90
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/ui/DownloadRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/android/providers/downloads/ui/DownloadRequest;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "cookies"    # Ljava/lang/String;
    .param p5, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->mRequest:Lcom/android/providers/downloads/ui/DownloadRequest;

    .line 118
    iput-object p3, p0, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->mUri:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->mCookies:Ljava/lang/String;

    .line 120
    if-eqz p5, :cond_0

    .end local p5    # "userAgent":Ljava/lang/String;
    :goto_0
    iput-object p5, p0, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->mUserAgent:Ljava/lang/String;

    .line 121
    return-void

    .line 120
    .restart local p5    # "userAgent":Ljava/lang/String;
    :cond_0
    sget-object p5, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->DEFAULT_USER_AGENT:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->mRequest:Lcom/android/providers/downloads/ui/DownloadRequest;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadRequest;->setFileNameHint(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 127
    iget-object v0, p0, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->mRequest:Lcom/android/providers/downloads/ui/DownloadRequest;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/FetchUrlMimeType;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadRequest;->enqueue(Landroid/content/Context;)J

    .line 128
    return-void
.end method
