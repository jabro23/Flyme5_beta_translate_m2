.class Lcom/meizu/common/widget/CircularProgressButton$4;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"

# interfaces
.implements Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CircularProgressButton;->directprogressToError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CircularProgressButton;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CircularProgressButton;)V
    .locals 0

    .prologue
    .line 901
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 4

    .prologue
    .line 904
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    # getter for: Lcom/meizu/common/widget/CircularProgressButton;->mIconError:I
    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton;->access$700(Lcom/meizu/common/widget/CircularProgressButton;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 906
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    # getter for: Lcom/meizu/common/widget/CircularProgressButton;->mIconError:I
    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$700(Lcom/meizu/common/widget/CircularProgressButton;)I

    move-result v1

    # invokes: Lcom/meizu/common/widget/CircularProgressButton;->setIcon(I)V
    invoke-static {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$200(Lcom/meizu/common/widget/CircularProgressButton;I)V

    .line 913
    :goto_0
    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CircularProgressButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    # getter for: Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;
    invoke-static {v3}, Lcom/meizu/common/widget/CircularProgressButton;->access$800(Lcom/meizu/common/widget/CircularProgressButton;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/CircularProgressButton;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CircularProgressButton;->getCompoundPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CircularProgressButton;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setWidth(I)V

    .line 909
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    # getter for: Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$800(Lcom/meizu/common/widget/CircularProgressButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 910
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/common/widget/CircularProgressButton;->isFirstTime:Z
    invoke-static {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$902(Lcom/meizu/common/widget/CircularProgressButton;Z)Z

    .line 911
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x1

    # setter for: Lcom/meizu/common/widget/CircularProgressButton;->isCycle:Z
    invoke-static {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$1002(Lcom/meizu/common/widget/CircularProgressButton;Z)Z

    goto :goto_0
.end method