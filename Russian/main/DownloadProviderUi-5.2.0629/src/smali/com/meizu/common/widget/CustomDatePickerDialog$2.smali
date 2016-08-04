.class Lcom/meizu/common/widget/CustomDatePickerDialog$2;
.super Ljava/lang/Object;
.source "CustomDatePickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CustomDatePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CustomDatePickerDialog;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 227
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mIndicator:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$100(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mIndicator:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$100(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 228
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # setter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsLayoutRtl:Z
    invoke-static {v1, v3}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$202(Lcom/meizu/common/widget/CustomDatePickerDialog;Z)Z

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsLayoutRtl:Z
    invoke-static {v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$200(Lcom/meizu/common/widget/CustomDatePickerDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mIndicator:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$100(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 235
    .local v0, "indicatorLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-virtual {v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0210

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 236
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mIndicator:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$100(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    .end local v0    # "indicatorLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    const/4 v2, 0x0

    # setter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsLayoutRtl:Z
    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$202(Lcom/meizu/common/widget/CustomDatePickerDialog;Z)Z

    goto :goto_0
.end method
