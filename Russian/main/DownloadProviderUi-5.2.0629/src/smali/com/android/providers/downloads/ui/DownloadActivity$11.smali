.class Lcom/android/providers/downloads/ui/DownloadActivity$11;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadActivity;->setOnSelectLisenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 28
    .param p1, "parent"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;
    invoke-static/range {v23 .. v23}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$800(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/database/Cursor;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;
    invoke-static/range {v23 .. v23}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$800(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/database/Cursor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isClosed()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity;->mIdPositions:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 520
    .local v19, "pos":Ljava/lang/Integer;
    if-eqz v19, :cond_0

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;
    invoke-static/range {v23 .. v23}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$800(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/database/Cursor;

    move-result-object v5

    .line 523
    .local v5, "cursor":Landroid/database/Cursor;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 524
    const-string v23, "status"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 526
    .local v21, "status":I
    const-string v23, "_id"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 528
    .local v14, "mid":J
    const/16 v23, 0x8

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 529
    const-string v23, "local_filename"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 531
    .local v8, "filename":Ljava/lang/String;
    const-string v23, "title"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 533
    .local v22, "title":Ljava/lang/String;
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_3

    .line 534
    :cond_2
    const-string v23, "hint"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 536
    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_3

    .line 537
    const/16 v23, 0x2f

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 538
    .local v11, "lastIndex":I
    if-lez v11, :cond_3

    .line 539
    add-int/lit8 v23, v11, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 543
    .end local v11    # "lastIndex":I
    :cond_3
    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_5

    .line 544
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/providers/downloads/ui/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08003f

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 546
    :cond_5
    if-eqz v22, :cond_6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, ".tmp"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 547
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v12

    .line 548
    .local v12, "length":I
    const/16 v23, 0x4

    move/from16 v0, v23

    if-le v12, v0, :cond_6

    .line 549
    const/16 v23, 0x0

    add-int/lit8 v24, v12, -0x4

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 552
    .end local v12    # "length":I
    :cond_6
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_0

    .line 554
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_7

    .line 555
    new-instance v23, Landroid/support/v7/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v24, 0xa020174

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f080037

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->getTitle(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1700(Lcom/android/providers/downloads/ui/DownloadActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\" "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/providers/downloads/ui/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080040

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x104000a

    new-instance v25, Lcom/android/providers/downloads/ui/DownloadActivity$11$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/android/providers/downloads/ui/DownloadActivity$11$2;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity$11;IJ)V

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f08003e

    new-instance v25, Lcom/android/providers/downloads/ui/DownloadActivity$11$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity$11$1;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity$11;)V

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v16

    .line 571
    .local v16, "newDialog":Landroid/support/v7/app/AlertDialog;
    goto/16 :goto_0

    .line 573
    .end local v16    # "newDialog":Landroid/support/v7/app/AlertDialog;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->matchUpdateBinFile(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1800(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v24, v0

    const-string v25, "com.meizu.flyme.update"

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->isAppLocalInstall(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static/range {v23 .. v25}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1900(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 575
    const/16 v20, 0x1

    .line 577
    .local v20, "result":Z
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v23, "com.meizu.intent.action.UPGRADE_DIALOG"

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v4, "activityIntent":Landroid/content/Intent;
    const-string v23, "package_name"

    const-string v24, "com.android.providers.downloads"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const-string v23, "upgrade_locate_filepath"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const-string v23, "wipe_userdata"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 581
    const-string v23, "force_clear"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/providers/downloads/ui/DownloadActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 586
    .end local v4    # "activityIntent":Landroid/content/Intent;
    :goto_1
    if-nez v20, :cond_0

    .line 589
    .end local v20    # "result":Z
    :cond_8
    const/4 v13, 0x0

    .line 590
    .local v13, "mimetype":Ljava/lang/String;
    const/16 v23, 0x2e

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 591
    .restart local v11    # "lastIndex":I
    if-lez v11, :cond_9

    .line 592
    invoke-static {v8}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 594
    :cond_9
    if-nez v13, :cond_a

    .line 595
    const-string v23, "media_type"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 598
    :cond_a
    const/4 v7, 0x0

    .line 599
    .local v7, "fileDir":Ljava/lang/String;
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_b

    .line 600
    const/16 v23, 0x2f

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 601
    if-lez v11, :cond_b

    .line 602
    const/16 v23, 0x0

    add-int/lit8 v24, v11, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 605
    :cond_b
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 606
    .local v18, "path":Landroid/net/Uri;
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_c

    .line 607
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v18

    .line 609
    :cond_c
    new-instance v4, Landroid/content/Intent;

    const-string v23, "android.intent.action.VIEW"

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .restart local v4    # "activityIntent":Landroid/content/Intent;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    if-eqz v13, :cond_d

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, "application/vnd.android.package-archive"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 612
    const/high16 v23, 0x14000000

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 617
    :cond_d
    const/4 v9, 0x0

    .line 618
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, "application/octet-stream"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_e

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/providers/downloads/ui/DownloadActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const/high16 v24, 0x10000

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 622
    :cond_e
    if-nez v9, :cond_f

    if-nez v7, :cond_10

    .line 624
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/providers/downloads/ui/DownloadActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 625
    :catch_0
    move-exception v23

    goto/16 :goto_0

    .line 583
    .end local v4    # "activityIntent":Landroid/content/Intent;
    .end local v7    # "fileDir":Ljava/lang/String;
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    .end local v11    # "lastIndex":I
    .end local v13    # "mimetype":Ljava/lang/String;
    .end local v18    # "path":Landroid/net/Uri;
    .restart local v20    # "result":Z
    :catch_1
    move-exception v6

    .line 584
    .local v6, "e":Ljava/lang/Exception;
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 627
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v20    # "result":Z
    .restart local v4    # "activityIntent":Landroid/content/Intent;
    .restart local v7    # "fileDir":Ljava/lang/String;
    .restart local v9    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "lastIndex":I
    .restart local v13    # "mimetype":Ljava/lang/String;
    .restart local v18    # "path":Landroid/net/Uri;
    :cond_10
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_0

    .line 628
    sget-object v23, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v24, v0

    const v25, 0x7f08001a

    invoke-virtual/range {v24 .. v25}, Lcom/android/providers/downloads/ui/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/meizu/common/app/SlideNotice;->makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/meizu/common/app/SlideNotice;

    move-result-object v17

    .line 630
    .local v17, "notice":Lcom/meizu/common/app/SlideNotice;
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/meizu/common/app/SlideNotice;->setActionBarToTop(Z)V

    .line 631
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/common/app/SlideNotice;->show()V

    goto/16 :goto_0

    .line 634
    .end local v17    # "notice":Lcom/meizu/common/app/SlideNotice;
    :cond_11
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 635
    .local v10, "intent":Landroid/content/Intent;
    const-string v23, "com.meizu.filemanager"

    const-string v24, "com.meizu.filemanager.managefile.FileManagerActivity"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const/high16 v23, 0x14200000

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 639
    const-string v23, "init_directory"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/android/providers/downloads/ui/DownloadActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 642
    :catch_2
    move-exception v23

    goto/16 :goto_0

    .line 646
    .end local v4    # "activityIntent":Landroid/content/Intent;
    .end local v7    # "fileDir":Ljava/lang/String;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "lastIndex":I
    .end local v13    # "mimetype":Ljava/lang/String;
    .end local v18    # "path":Landroid/net/Uri;
    .end local v22    # "title":Ljava/lang/String;
    :cond_12
    const-string v23, "DownloadActivity"

    const-string v24, "something error happened!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
