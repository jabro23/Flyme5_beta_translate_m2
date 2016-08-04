.class Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;
.super Landroid/view/GestureDetector;
.source "MzRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/MzRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemGestureDetector"
.end annotation


# instance fields
.field private itemGestureListener:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

.field private lastTouchX:I

.field private lastTouchY:I

.field private scrollPointerId:I

.field final synthetic this$0:Lflyme/support/v7/widget/MzRecyclerView;

.field private touchSlop:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lflyme/support/v7/widget/MzRecyclerView;Landroid/content/Context;Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    .prologue
    .line 398
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    .line 399
    invoke-direct {p0, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 395
    const/4 v1, -0x1

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->scrollPointerId:I

    .line 400
    iput-object p3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->itemGestureListener:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    .line 401
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 402
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->touchSlop:I

    .line 403
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 407
    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v14, :cond_0

    .line 408
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    .line 410
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 412
    invoke-super/range {p0 .. p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 416
    .local v7, "handled":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v14}, Lflyme/support/v7/widget/MzRecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v8

    .line 417
    .local v8, "layout":Lflyme/support/v7/widget/RecyclerView$LayoutManager;
    if-nez v8, :cond_2

    .line 418
    const/4 v7, 0x0

    .line 477
    .end local v7    # "handled":Z
    :cond_1
    :goto_0
    return v7

    .line 420
    .restart local v7    # "handled":Z
    :cond_2
    invoke-virtual {v8}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    .line 421
    .local v2, "canScrollHorizontally":Z
    invoke-virtual {v8}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 422
    .local v3, "canScrollVertically":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 425
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 427
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->lastTouchX:I

    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->lastTouchY:I

    .line 429
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->scrollPointerId:I

    goto :goto_0

    .line 432
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v10, v14

    .line 433
    .local v10, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v12, v14

    .line 434
    .local v12, "y":I
    move-object/from16 v0, p0

    iget v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->lastTouchX:I

    sub-int v4, v14, v10

    .line 435
    .local v4, "dx":I
    move-object/from16 v0, p0

    iget v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->lastTouchY:I

    sub-int v5, v14, v12

    .line 437
    .local v5, "dy":I
    const/4 v9, 0x0

    .line 438
    .local v9, "startScroll":Z
    if-eqz v2, :cond_3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->touchSlop:I

    if-le v14, v15, :cond_3

    .line 439
    const/4 v9, 0x1

    .line 441
    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->touchSlop:I

    if-le v14, v15, :cond_4

    .line 442
    const/4 v9, 0x1

    .line 444
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v14, v14, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    if-eqz v9, :cond_5

    .line 445
    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->itemGestureListener:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    invoke-virtual {v14}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->startScrolled()V

    .line 447
    :cond_5
    if-eqz v9, :cond_1

    .line 448
    move-object/from16 v0, p0

    iput v10, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->lastTouchX:I

    .line 449
    move-object/from16 v0, p0

    iput v12, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->lastTouchY:I

    goto/16 :goto_0

    .line 453
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v9    # "startScroll":Z
    .end local v10    # "x":I
    .end local v12    # "y":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v15, 0x3e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lflyme/support/v7/widget/MzRecyclerView;->getMaxFlingVelocity()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 454
    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v15, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->scrollPointerId:I

    invoke-static {v14, v15}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v14

    neg-float v11, v14

    .line 456
    .local v11, "xvel":F
    :goto_1
    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v15, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->scrollPointerId:I

    invoke-static {v14, v15}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v14

    neg-float v13, v14

    .line 458
    .local v13, "yvel":F
    :goto_2
    const/4 v6, 0x0

    .line 459
    .local v6, "fling":Z
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v15}, Lflyme/support/v7/widget/MzRecyclerView;->getMinFlingVelocity()I

    move-result v15

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-gez v14, :cond_6

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v15}, Lflyme/support/v7/widget/MzRecyclerView;->getMinFlingVelocity()I

    move-result v15

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_7

    .line 460
    :cond_6
    const/4 v6, 0x1

    .line 462
    :cond_7
    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v14, v14, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_8

    .line 463
    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v15, 0x4

    iput v15, v14, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 465
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->itemGestureListener:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    invoke-virtual {v14}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->onUp()Z

    .line 466
    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v14, :cond_1

    .line 467
    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v14}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 454
    .end local v6    # "fling":Z
    .end local v11    # "xvel":F
    .end local v13    # "yvel":F
    :cond_9
    const/4 v11, 0x0

    goto :goto_1

    .line 456
    .restart local v11    # "xvel":F
    :cond_a
    const/4 v13, 0x0

    goto :goto_2

    .line 471
    .end local v11    # "xvel":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->itemGestureListener:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    invoke-virtual {v14}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->onCancel()V

    .line 472
    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v14, :cond_1

    .line 473
    move-object/from16 v0, p0

    iget-object v14, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v14}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
