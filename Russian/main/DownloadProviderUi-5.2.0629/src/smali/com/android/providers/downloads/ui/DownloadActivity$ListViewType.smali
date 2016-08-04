.class final enum Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;
.super Ljava/lang/Enum;
.source "DownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ListViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

.field public static final enum E_Downloaded:Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

.field public static final enum E_Downloading:Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    const-string v1, "E_Downloading"

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;->E_Downloading:Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    new-instance v0, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    const-string v1, "E_Downloaded"

    invoke-direct {v0, v1, v3}, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;->E_Downloaded:Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    .line 251
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    sget-object v1, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;->E_Downloading:Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;->E_Downloaded:Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;->$VALUES:[Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 251
    const-class v0, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    return-object v0
.end method

.method public static values()[Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;->$VALUES:[Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    invoke-virtual {v0}, [Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    return-object v0
.end method
