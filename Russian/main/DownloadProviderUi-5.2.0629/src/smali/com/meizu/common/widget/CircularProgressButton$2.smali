.class Lcom/meizu/common/widget/CircularProgressButton$2;
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
    .line 812
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    # getter for: Lcom/meizu/common/widget/CircularProgressButton;->mIconComplete:I
    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton;->access$100(Lcom/meizu/common/widget/CircularProgressButton;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    # getter for: Lcom/meizu/common/widget/CircularProgressButton;->mIconComplete:I
    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$100(Lcom/meizu/common/widget/CircularProgressButton;)I

    move-result v1

    # invokes: Lcom/meizu/common/widget/CircularProgressButton;->setIcon(I)V
    invoke-static {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$200(Lcom/meizu/common/widget/CircularProgressButton;I)V

    .line 821
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z
    invoke-static {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$002(Lcom/meizu/common/widget/CircularProgressButton;Z)Z

    .line 822
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setClickable(Z)V

    .line 824
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    # getter for: Lcom/meizu/common/widget/CircularProgressButton;->mTextColorComplete:Landroid/content/res/ColorStateList;
    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$400(Lcom/meizu/common/widget/CircularProgressButton;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 826
    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    # getter for: Lcom/meizu/common/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$300(Lcom/meizu/common/widget/CircularProgressButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
