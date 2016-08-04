.class Lcom/android/providers/downloads/ui/DefaultSaveSetting$1;
.super Ljava/lang/Object;
.source "DefaultSaveSetting.java"

# interfaces
.implements Landroid/widget/ListView$DividerPadding;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DefaultSaveSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$1;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDividerPadding(I)[I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const v3, 0x7f0b000b

    .line 92
    const/4 v1, 0x2

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$1;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    invoke-virtual {v2}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$1;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    invoke-virtual {v2}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    aput v2, v0, v1

    .line 94
    .local v0, "padding":[I
    return-object v0
.end method
