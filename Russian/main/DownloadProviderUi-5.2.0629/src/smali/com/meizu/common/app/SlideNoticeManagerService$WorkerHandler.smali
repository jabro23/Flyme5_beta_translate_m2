.class final Lcom/meizu/common/app/SlideNoticeManagerService$WorkerHandler;
.super Landroid/os/Handler;
.source "SlideNoticeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNoticeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/app/SlideNoticeManagerService;


# direct methods
.method private constructor <init>(Lcom/meizu/common/app/SlideNoticeManagerService;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/meizu/common/app/SlideNoticeManagerService$WorkerHandler;->this$0:Lcom/meizu/common/app/SlideNoticeManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/app/SlideNoticeManagerService;Lcom/meizu/common/app/SlideNoticeManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/app/SlideNoticeManagerService;
    .param p2, "x1"    # Lcom/meizu/common/app/SlideNoticeManagerService$1;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/meizu/common/app/SlideNoticeManagerService$WorkerHandler;-><init>(Lcom/meizu/common/app/SlideNoticeManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/common/app/SlideNoticeManagerService$WorkerHandler;->this$0:Lcom/meizu/common/app/SlideNoticeManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/common/app/SlideNoticeManagerService$NoticeRecord;

    # invokes: Lcom/meizu/common/app/SlideNoticeManagerService;->handleTimeout(Lcom/meizu/common/app/SlideNoticeManagerService$NoticeRecord;)V
    invoke-static {v1, v0}, Lcom/meizu/common/app/SlideNoticeManagerService;->access$000(Lcom/meizu/common/app/SlideNoticeManagerService;Lcom/meizu/common/app/SlideNoticeManagerService$NoticeRecord;)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
