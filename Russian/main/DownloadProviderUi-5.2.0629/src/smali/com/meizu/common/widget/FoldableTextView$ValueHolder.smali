.class Lcom/meizu/common/widget/FoldableTextView$ValueHolder;
.super Ljava/lang/Object;
.source "FoldableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/FoldableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueHolder"
.end annotation


# instance fields
.field private mHeight:I

.field final synthetic this$0:Lcom/meizu/common/widget/FoldableTextView;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/FoldableTextView;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$ValueHolder;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/FoldableTextView;Lcom/meizu/common/widget/FoldableTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/widget/FoldableTextView;
    .param p2, "x1"    # Lcom/meizu/common/widget/FoldableTextView$1;

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/FoldableTextView$ValueHolder;-><init>(Lcom/meizu/common/widget/FoldableTextView;)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView$ValueHolder;->mHeight:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 594
    iput p1, p0, Lcom/meizu/common/widget/FoldableTextView$ValueHolder;->mHeight:I

    .line 595
    return-void
.end method
