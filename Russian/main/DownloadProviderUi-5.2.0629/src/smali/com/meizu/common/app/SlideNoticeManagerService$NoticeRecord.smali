.class final Lcom/meizu/common/app/SlideNoticeManagerService$NoticeRecord;
.super Ljava/lang/Object;
.source "SlideNoticeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNoticeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoticeRecord"
.end annotation


# instance fields
.field final activity:Landroid/app/Activity;

.field final callback:Lcom/meizu/common/app/SlideNoticeManagerService$NoticeCallBack;

.field duration:I

.field message:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;ILcom/meizu/common/app/SlideNoticeManagerService$NoticeCallBack;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I
    .param p3, "callback"    # Lcom/meizu/common/app/SlideNoticeManagerService$NoticeCallBack;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/meizu/common/app/SlideNoticeManagerService$NoticeRecord;->message:Ljava/lang/CharSequence;

    .line 35
    iput p2, p0, Lcom/meizu/common/app/SlideNoticeManagerService$NoticeRecord;->duration:I

    .line 36
    iput-object p3, p0, Lcom/meizu/common/app/SlideNoticeManagerService$NoticeRecord;->callback:Lcom/meizu/common/app/SlideNoticeManagerService$NoticeCallBack;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/app/SlideNoticeManagerService$NoticeRecord;->activity:Landroid/app/Activity;

    .line 38
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;ILcom/meizu/common/app/SlideNoticeManagerService$NoticeCallBack;Landroid/app/Activity;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I
    .param p3, "callback"    # Lcom/meizu/common/app/SlideNoticeManagerService$NoticeCallBack;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/meizu/common/app/SlideNoticeManagerService$NoticeRecord;->message:Ljava/lang/CharSequence;

    .line 42
    iput p2, p0, Lcom/meizu/common/app/SlideNoticeManagerService$NoticeRecord;->duration:I

    .line 43
    iput-object p3, p0, Lcom/meizu/common/app/SlideNoticeManagerService$NoticeRecord;->callback:Lcom/meizu/common/app/SlideNoticeManagerService$NoticeCallBack;

    .line 44
    iput-object p4, p0, Lcom/meizu/common/app/SlideNoticeManagerService$NoticeRecord;->activity:Landroid/app/Activity;

    .line 45
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoticeRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/app/SlideNoticeManagerService$NoticeRecord;->callback:Lcom/meizu/common/app/SlideNoticeManagerService$NoticeCallBack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/app/SlideNoticeManagerService$NoticeRecord;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/meizu/common/app/SlideNoticeManagerService$NoticeRecord;->duration:I

    .line 49
    return-void
.end method
