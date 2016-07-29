.class Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "EnhanceSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceSeekBar;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .locals 0

    .prologue
    .line 996
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;Lcom/meizu/common/widget/EnhanceSeekBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/widget/EnhanceSeekBar;
    .param p2, "x1"    # Lcom/meizu/common/widget/EnhanceSeekBar$1;

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 998
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->sendAccessibilityEvent(I)V

    .line 999
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fdb\u5165\u6ed1\u5757\u63a7\u4ef6, \u5f53\u524d\u8bbe\u7f6e\u4e3a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    # getter for: Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$400(Lcom/meizu/common/widget/EnhanceSeekBar;)[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    # getter for: Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I
    invoke-static {v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$500(Lcom/meizu/common/widget/EnhanceSeekBar;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1000
    return-void
.end method
