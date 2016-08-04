.class public Lcom/meizu/common/app/SlideNotice;
.super Ljava/lang/Object;
.source "SlideNotice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/app/SlideNotice$1;,
        Lcom/meizu/common/app/SlideNotice$NoticeHandler;,
        Lcom/meizu/common/app/SlideNotice$SlideContainerView;,
        Lcom/meizu/common/app/SlideNotice$SlideViewController;,
        Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field private static final NOTICE_CLICK:I = 0x0

.field public static final NOTICE_TYPE_FAILURE:I = 0x0

.field public static final NOTICE_TYPE_SUCCESS:I = 0x1

.field public static final SHOW_ANIMATION_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "SlideNotice"

.field private static mService:Lcom/meizu/common/app/SlideNoticeManagerService;

.field private static sMeizuFlag:Ljava/lang/reflect/Field;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuration:I

.field private mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {v0, p0, p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;-><init>(Lcom/meizu/common/app/SlideNotice;Lcom/meizu/common/app/SlideNotice;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    .line 108
    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/common/app/SlideNotice;)Lcom/meizu/common/app/SlideNotice$SlideViewController;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->sMeizuFlag:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$1502(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 0
    .param p0, "x0"    # Ljava/lang/reflect/Field;

    .prologue
    .line 60
    sput-object p0, Lcom/meizu/common/app/SlideNotice;->sMeizuFlag:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getService()Lcom/meizu/common/app/SlideNoticeManagerService;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->mService:Lcom/meizu/common/app/SlideNoticeManagerService;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->mService:Lcom/meizu/common/app/SlideNoticeManagerService;

    .line 94
    :goto_0
    return-object v0

    .line 93
    :cond_0
    new-instance v0, Lcom/meizu/common/app/SlideNoticeManagerService;

    invoke-direct {v0}, Lcom/meizu/common/app/SlideNoticeManagerService;-><init>()V

    sput-object v0, Lcom/meizu/common/app/SlideNotice;->mService:Lcom/meizu/common/app/SlideNoticeManagerService;

    .line 94
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->mService:Lcom/meizu/common/app/SlideNoticeManagerService;

    goto :goto_0
.end method

.method public static makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/meizu/common/app/SlideNotice;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 326
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/meizu/common/app/SlideNotice;->makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;

    move-result-object v0

    return-object v0
.end method

.method public static makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/meizu/common/app/SlideNotice;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-static {p0, p1, v0, v0}, Lcom/meizu/common/app/SlideNotice;->makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;

    move-result-object v0

    return-object v0
.end method

.method public static makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I
    .param p3, "duration"    # I

    .prologue
    .line 352
    new-instance v0, Lcom/meizu/common/app/SlideNotice;

    invoke-direct {v0, p0, p1, p3}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 353
    .local v0, "notice":Lcom/meizu/common/app/SlideNotice;
    return-object v0
.end method

.method public static makeSlideNotice(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/meizu/common/app/SlideNotice;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 377
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/meizu/common/app/SlideNotice;->makeSlideNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;

    move-result-object v0

    return-object v0
.end method

.method public static makeSlideNotice(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/meizu/common/app/SlideNotice;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I

    .prologue
    .line 391
    new-instance v0, Lcom/meizu/common/app/SlideNotice;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;)V

    .line 392
    .local v0, "notice":Lcom/meizu/common/app/SlideNotice;
    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {v0, p2}, Lcom/meizu/common/app/SlideNotice;->setNoticeType(I)V

    .line 394
    return-object v0
.end method

.method public static makeSlideNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I
    .param p3, "duration"    # I

    .prologue
    .line 411
    new-instance v0, Lcom/meizu/common/app/SlideNotice;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;)V

    .line 412
    .local v0, "notice":Lcom/meizu/common/app/SlideNotice;
    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice;->setText(Ljava/lang/CharSequence;)V

    .line 413
    invoke-virtual {v0, p2}, Lcom/meizu/common/app/SlideNotice;->setNoticeType(I)V

    .line 414
    iput p3, v0, Lcom/meizu/common/app/SlideNotice;->mDuration:I

    .line 415
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 292
    :cond_0
    return-void
.end method

.method public cancelWithoutAnim()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    # invokes: Lcom/meizu/common/app/SlideNotice$SlideViewController;->destroy()V
    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$000(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    .line 308
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/meizu/common/app/SlideNotice;->cancel()V

    .line 285
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/meizu/common/app/SlideNotice;->mDuration:I

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isShowing()Z

    move-result v0

    return v0
.end method

.method public resetSlideFrom()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->resetTop()V

    .line 172
    return-void
.end method

.method public setActionBarToTop(Z)V
    .locals 1
    .param p1, "toTop"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setBelowDefaultActionBar(Z)V

    .line 182
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setAnchor(Landroid/view/View;)V

    .line 257
    return-void
.end method

.method public setBeginColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setBeginColor(I)V

    .line 116
    return-void
.end method

.method public setBelowDefaultActionBar(Z)V
    .locals 1
    .param p1, "belowDefaultActionBar"    # Z

    .prologue
    .line 189
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setBelowDefaultActionBar(Z)V

    .line 190
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "customView"    # Landroid/view/View;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setCustomView(Landroid/view/View;)V

    .line 424
    return-void
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 237
    iput p1, p0, Lcom/meizu/common/app/SlideNotice;->mDuration:I

    .line 238
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 239
    :cond_0
    return-void
.end method

.method public setEndColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setEndColor(I)V

    .line 120
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setGravity(I)V

    .line 366
    return-void
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setNoticeHeight(I)V

    .line 194
    return-void
.end method

.method public setIsOverlaidByStatusBar(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 219
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setIsOverlaidByStatusBar(Z)V

    .line 220
    return-void
.end method

.method public setLeft(I)V
    .locals 1
    .param p1, "left"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setLeft(I)V

    .line 165
    return-void
.end method

.method public setNoTitleBarStyle(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setIsOverlaidByStatusBar(Z)V

    .line 212
    return-void
.end method

.method public setNoticeType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 132
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 141
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/SlideNotice;->setBeginColor(I)V

    .line 143
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/SlideNotice;->setEndColor(I)V

    goto :goto_0

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/SlideNotice;->setBeginColor(I)V

    .line 136
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/SlideNotice;->setEndColor(I)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setOnClickNoticeListener(Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;)V
    .locals 1
    .param p1, "l"    # Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setOnClickNoticeListener(Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;)V

    .line 228
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setTop(I)V
    .locals 1
    .param p1, "top"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setTop(I)V

    .line 156
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setNoticeWidth(I)V

    .line 198
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 261
    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 0
    .param p1, "isKeeped"    # Z

    .prologue
    .line 264
    return-void
.end method

.method public showAndFinish(J)V
    .locals 0
    .param p1, "keepTime"    # J

    .prologue
    .line 316
    return-void
.end method

.method public slideToCancel()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->hide()V

    .line 300
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->getService()Lcom/meizu/common/app/SlideNoticeManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, v1}, Lcom/meizu/common/app/SlideNoticeManagerService;->cancelNotice(Lcom/meizu/common/app/SlideNoticeManagerService$NoticeCallBack;)V

    .line 301
    return-void
.end method

.method public slideToShow()V
    .locals 4

    .prologue
    .line 267
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->getService()Lcom/meizu/common/app/SlideNoticeManagerService;

    move-result-object v1

    .line 268
    .local v1, "service":Lcom/meizu/common/app/SlideNoticeManagerService;
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 269
    .local v0, "message":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget v3, p0, Lcom/meizu/common/app/SlideNotice;->mDuration:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/meizu/common/app/SlideNoticeManagerService;->enqueueNotice(Ljava/lang/CharSequence;Lcom/meizu/common/app/SlideNoticeManagerService$NoticeCallBack;I)V

    .line 270
    return-void
.end method

.method public slideToShow(Z)V
    .locals 1
    .param p1, "isKeeped"    # Z

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->show()V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/app/SlideNotice;->show()V

    goto :goto_0
.end method
