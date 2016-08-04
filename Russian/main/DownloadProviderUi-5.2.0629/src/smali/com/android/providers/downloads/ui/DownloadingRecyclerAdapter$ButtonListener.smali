.class Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;
.super Ljava/lang/Object;
.source "DownloadingRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonListener"
.end annotation


# instance fields
.field public mClicked:Z

.field private mId:J

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;)V
    .locals 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->this$0:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->mClicked:Z

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->mId:J

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->mTitle:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;
    .param p2, "x1"    # Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$1;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;-><init>(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    const-string v0, "DownloadingRecyclerAdapter"

    const-string v1, "ButtonListener click error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->this$0:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    iget-wide v2, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->mId:J

    # invokes: Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->updateStatus(J)V
    invoke-static {v0, v2, v3}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->access$200(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;J)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->mClicked:Z

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x7f0d0092
        :pswitch_0
    .end packed-switch
.end method

.method public setItemId(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->mId:J

    .line 72
    iput-object p3, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->mTitle:Ljava/lang/String;

    .line 73
    return-void
.end method
