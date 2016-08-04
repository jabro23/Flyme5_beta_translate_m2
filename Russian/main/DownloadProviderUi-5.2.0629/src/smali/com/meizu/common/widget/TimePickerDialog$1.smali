.class Lcom/meizu/common/widget/TimePickerDialog$1;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/TimePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/TimePickerDialog;

.field final synthetic val$selectColor:I


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/TimePickerDialog;I)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/meizu/common/widget/TimePickerDialog$1;->this$0:Lcom/meizu/common/widget/TimePickerDialog;

    iput p2, p0, Lcom/meizu/common/widget/TimePickerDialog$1;->val$selectColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog$1;->this$0:Lcom/meizu/common/widget/TimePickerDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/TimePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/TimePickerDialog$1;->val$selectColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 145
    return-void
.end method
