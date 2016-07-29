.class Lcom/meizu/common/widget/CircularProgressButton$5;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"

# interfaces
.implements Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CircularProgressButton;
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
    .line 936
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton$5;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$5;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    # getter for: Lcom/meizu/common/widget/CircularProgressButton;->mIconError:I
    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton;->access$700(Lcom/meizu/common/widget/CircularProgressButton;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$5;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 941
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$5;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$5;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    # getter for: Lcom/meizu/common/widget/CircularProgressButton;->mIconError:I
    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$700(Lcom/meizu/common/widget/CircularProgressButton;)I

    move-result v1

    # invokes: Lcom/meizu/common/widget/CircularProgressButton;->setIcon(I)V
    invoke-static {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$200(Lcom/meizu/common/widget/CircularProgressButton;I)V

    .line 945
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$5;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z
    invoke-static {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$002(Lcom/meizu/common/widget/CircularProgressButton;Z)Z

    .line 946
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$5;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setClickable(Z)V

    .line 948
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$5;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$5;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    # getter for: Lcom/meizu/common/widget/CircularProgressButton;->mTextColorError:Landroid/content/res/ColorStateList;
    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$1100(Lcom/meizu/common/widget/CircularProgressButton;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 950
    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$5;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$5;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    # getter for: Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$800(Lcom/meizu/common/widget/CircularProgressButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
