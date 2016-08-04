.class Lcom/meizu/common/widget/TimePicker$1;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/TimePicker;->init24HourView()V
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
    .line 286
    iput-object p1, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 290
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$700(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    if-eqz v5, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_1

    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$700(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/common/widget/ScrollTextView;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 291
    const/4 v2, 0x1

    .line 296
    .local v2, "isLayoutRtl":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 297
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    const v6, 0x7f0d00b3

    invoke-virtual {v5, v6}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 298
    .local v1, "hourParent":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v5}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0211

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v6}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0212

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v1, v5, v8, v6, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 301
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$700(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/common/widget/ScrollTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 302
    .local v0, "hourLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 303
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 304
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 305
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$700(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/meizu/common/widget/ScrollTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$800(Lcom/meizu/common/widget/TimePicker;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "hourLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 308
    .restart local v0    # "hourLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 309
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 310
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 311
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$800(Lcom/meizu/common/widget/TimePicker;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    const v6, 0x7f0d00b7

    invoke-virtual {v5, v6}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 314
    .local v4, "minuteParent":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v5}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0214

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5, v8, v8, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 317
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$900(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/common/widget/ScrollTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 318
    .local v3, "minuteLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 319
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v5}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0213

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 320
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 321
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$900(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/meizu/common/widget/ScrollTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$1000(Lcom/meizu/common/widget/TimePicker;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "minuteLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 324
    .restart local v3    # "minuteLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 325
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 326
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 327
    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker$1;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/meizu/common/widget/TimePicker;->access$1000(Lcom/meizu/common/widget/TimePicker;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    .end local v0    # "hourLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "hourParent":Landroid/widget/FrameLayout;
    .end local v3    # "minuteLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "minuteParent":Landroid/widget/FrameLayout;
    :cond_0
    return-void

    .line 293
    .end local v2    # "isLayoutRtl":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isLayoutRtl":Z
    goto/16 :goto_0
.end method
