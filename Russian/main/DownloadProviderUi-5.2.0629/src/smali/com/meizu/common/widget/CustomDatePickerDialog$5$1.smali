.class Lcom/meizu/common/widget/CustomDatePickerDialog$5$1;
.super Ljava/lang/Object;
.source "CustomDatePickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CustomDatePickerDialog$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/CustomDatePickerDialog$5;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CustomDatePickerDialog$5;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5$1;->this$1:Lcom/meizu/common/widget/CustomDatePickerDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5$1;->this$1:Lcom/meizu/common/widget/CustomDatePickerDialog$5;

    iget-object v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;
    invoke-static {v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Lcom/meizu/common/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->setIsDrawFading(Z)V

    .line 395
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5$1;->this$1:Lcom/meizu/common/widget/CustomDatePickerDialog$5;

    iget-object v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;
    invoke-static {v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Lcom/meizu/common/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->setLunar(Z)V

    .line 396
    return-void
.end method
