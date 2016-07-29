.class Lcom/meizu/common/widget/TimePicker$2;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/TimePicker;->init12HourView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/TimePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/TimePicker;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 365
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$700(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    if-eqz v5, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_1

    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$700(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/common/widget/ScrollTextView;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 366
    const/4 v3, 0x1

    .line 371
    .local v3, "isLayoutRtl":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 372
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$1100(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/common/widget/ScrollTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 373
    .local v0, "amPmLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 374
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 375
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$1100(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/meizu/common/widget/ScrollTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    const v6, 0x7f0d00b3

    invoke-virtual {v5, v6}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 378
    .local v2, "hourParent":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v5}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0215

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5, v7, v7, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 380
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$700(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/common/widget/ScrollTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 381
    .local v1, "hourLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 382
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 383
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v5}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0216

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 384
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$700(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/meizu/common/widget/ScrollTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$800(Lcom/meizu/common/widget/TimePicker;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "hourLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 387
    .restart local v1    # "hourLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 388
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 389
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 390
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$800(Lcom/meizu/common/widget/TimePicker;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$900(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/common/widget/ScrollTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 393
    .local v4, "minuteLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 394
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 395
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v5}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0217

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 396
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$900(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/meizu/common/widget/ScrollTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$1000(Lcom/meizu/common/widget/TimePicker;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "minuteLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 399
    .restart local v4    # "minuteLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 400
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 401
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 402
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$2;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$1000(Lcom/meizu/common/widget/TimePicker;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    .end local v0    # "amPmLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "hourLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "hourParent":Landroid/widget/FrameLayout;
    .end local v4    # "minuteLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void

    .line 368
    .end local v3    # "isLayoutRtl":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "isLayoutRtl":Z
    goto/16 :goto_0
.end method
