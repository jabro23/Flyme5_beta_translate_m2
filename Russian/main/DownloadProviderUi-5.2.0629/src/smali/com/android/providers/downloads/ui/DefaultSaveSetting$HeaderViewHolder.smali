.class Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;
.super Ljava/lang/Object;
.source "DefaultSaveSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DefaultSaveSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field arrow:Landroid/widget/ImageView;

.field icon:Landroid/widget/ImageView;

.field summary:Landroid/widget/TextView;

.field switchButton:Lcom/meizu/common/widget/Switch;

.field final synthetic this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/downloads/ui/DefaultSaveSetting;Lcom/android/providers/downloads/ui/DefaultSaveSetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/providers/downloads/ui/DefaultSaveSetting;
    .param p2, "x1"    # Lcom/android/providers/downloads/ui/DefaultSaveSetting$1;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;-><init>(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)V

    return-void
.end method
