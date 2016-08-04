.class public Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;
.super Landroid/support/v7/app/ActionBar$Tab;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/support/v7/app/ActionBar$TabListener;

.field private mCallbackSDK:Landroid/support/v7/app/ActionBar$TabListenerSDK;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsEnabled:Z

.field private mPosition:I

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/app/WindowDecorActionBar;)V
    .locals 1

    .prologue
    .line 1311
    iput-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/support/v7/app/ActionBar$Tab;-><init>()V

    .line 1317
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    .line 1321
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->mIsEnabled:Z

    return-void
.end method


# virtual methods
.method public getCallback()Landroid/support/v7/app/ActionBar$TabListener;
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/support/v7/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getCallbackSDK()Landroid/support/v7/app/ActionBar$TabListenerSDK;
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->mCallbackSDK:Landroid/support/v7/app/ActionBar$TabListenerSDK;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1372
    iget v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1460
    iget-boolean v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->mIsEnabled:Z

    return v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/app/WindowDecorActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 1415
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1376
    iput p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    .line 1377
    return-void
.end method

.method public setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 0
    .param p1, "callback"    # Landroid/support/v7/app/ActionBar$TabListener;

    .prologue
    .line 1341
    iput-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/support/v7/app/ActionBar$TabListener;

    .line 1342
    return-object p0
.end method

.method public setText(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1409
    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    # getter for: Landroid/support/v7/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$1300(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1400
    iput-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 1401
    iget v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1402
    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    # getter for: Landroid/support/v7/internal/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$1400(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1404
    :cond_0
    return-object p0
.end method
