.class Lcom/meizu/common/widget/CustomDatePickerDialog$5;
.super Ljava/lang/Object;
.source "CustomDatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CustomDatePickerDialog;->initTabView(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

.field final synthetic val$gregorianColor:I

.field final synthetic val$unSlectColor:I


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CustomDatePickerDialog;II)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    iput p2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->val$gregorianColor:I

    iput p3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->val$unSlectColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 382
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;
    invoke-static {v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Lcom/meizu/common/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    iget v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->val$gregorianColor:I

    # invokes: Lcom/meizu/common/widget/CustomDatePickerDialog;->setTabColor(IZ)V
    invoke-static {v0, v1, v4}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$500(Lcom/meizu/common/widget/CustomDatePickerDialog;IZ)V

    .line 387
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;
    invoke-static {v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Lcom/meizu/common/widget/DatePicker;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->val$gregorianColor:I

    iget v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->val$unSlectColor:I

    iget v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->val$gregorianColor:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/common/widget/DatePicker;->setTextColor(III)V

    .line 389
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->val$gregorianColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 390
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mx4pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/meizu/common/widget/CustomDatePickerDialog$5$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CustomDatePickerDialog$5$1;-><init>(Lcom/meizu/common/widget/CustomDatePickerDialog$5;)V

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mDuration:J
    invoke-static {v2}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$600(Lcom/meizu/common/widget/CustomDatePickerDialog;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;
    invoke-static {v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Lcom/meizu/common/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/meizu/common/widget/DatePicker;->setLunar(Z)V

    goto :goto_0
.end method
