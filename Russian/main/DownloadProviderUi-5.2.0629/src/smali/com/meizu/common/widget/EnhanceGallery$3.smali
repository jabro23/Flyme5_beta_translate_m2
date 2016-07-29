.class Lcom/meizu/common/widget/EnhanceGallery$3;
.super Ljava/lang/Object;
.source "EnhanceGallery.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/EnhanceGallery;->setUpChild(Landroid/view/View;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .locals 0

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const v10, 0x1020001

    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1285
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v3, v3, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    if-ne v3, v9, :cond_0

    move v3, v4

    .line 1367
    :goto_0
    return v3

    .line 1287
    :cond_0
    const/4 v1, 0x0

    .line 1288
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    move v3, v5

    .line 1367
    goto :goto_0

    :sswitch_0
    move v3, v5

    .line 1291
    goto :goto_0

    :sswitch_1
    move v3, v5

    .line 1294
    goto :goto_0

    :sswitch_2
    move v3, v5

    .line 1297
    goto :goto_0

    :sswitch_3
    move v3, v5

    .line 1300
    goto :goto_0

    :sswitch_4
    move v3, v4

    .line 1303
    goto :goto_0

    .line 1306
    :sswitch_5
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v6, v6, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v7, v7, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1307
    if-eqz v1, :cond_3

    .line 1308
    instance-of v3, v1, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    if-eqz v3, :cond_5

    move-object v3, v1

    .line 1309
    check-cast v3, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    invoke-interface {v3}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v2

    .line 1310
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 1311
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1313
    :cond_2
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z
    invoke-static {v3}, Lcom/meizu/common/widget/EnhanceGallery;->access$500(Lcom/meizu/common/widget/EnhanceGallery;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1314
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1321
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1322
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v4, v4, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    invoke-virtual {v3, v4, v5}, Lcom/meizu/common/widget/EnhanceGallery;->setItemChecked(IZ)V

    .line 1331
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iput v9, v3, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    .line 1334
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery;->getCheckedItemCount()I

    move-result v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1335
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 1317
    :cond_5
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 1323
    :cond_6
    if-eqz v1, :cond_4

    .line 1324
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1325
    .local v0, "checkbox":Landroid/view/View;
    if-eqz v0, :cond_7

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_7

    .line 1326
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1328
    :cond_7
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery;->invalidateViews()V

    goto :goto_3

    .line 1340
    :sswitch_6
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v6, v6, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v7, v7, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1341
    if-eqz v1, :cond_a

    .line 1342
    instance-of v3, v1, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    if-eqz v3, :cond_c

    move-object v3, v1

    .line 1343
    check-cast v3, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    invoke-interface {v3}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v2

    .line 1344
    .restart local v2    # "v":Landroid/view/View;
    if-eqz v2, :cond_8

    .line 1345
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1347
    :cond_8
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z
    invoke-static {v3}, Lcom/meizu/common/widget/EnhanceGallery;->access$500(Lcom/meizu/common/widget/EnhanceGallery;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1348
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1354
    .end local v2    # "v":Landroid/view/View;
    :cond_9
    :goto_4
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1355
    .restart local v0    # "checkbox":Landroid/view/View;
    if-eqz v0, :cond_a

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_a

    .line 1356
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1359
    :cond_a
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery;->requestLayout()V

    .line 1362
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery;->getCheckedItemCount()I

    move-result v3

    if-gtz v3, :cond_b

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1363
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 1364
    :cond_b
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iput v9, v3, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    goto/16 :goto_1

    .line 1351
    :cond_c
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    .line 1288
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x64 -> :sswitch_6
    .end sparse-switch
.end method
