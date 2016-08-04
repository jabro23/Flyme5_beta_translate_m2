.class Lcom/meizu/common/widget/CustomDatePickerDialog$1;
.super Ljava/lang/Object;
.source "CustomDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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
    .line 212
    iput-object p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$1;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, -0x1

    .line 216
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$1;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;
    invoke-static {v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Lcom/meizu/common/widget/DatePicker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$1;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;
    invoke-static {v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Lcom/meizu/common/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$1;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$1;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    iget v1, v1, Lcom/meizu/common/widget/CustomDatePickerDialog;->lunarColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$1;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$1;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    iget v1, v1, Lcom/meizu/common/widget/CustomDatePickerDialog;->gregorianColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
