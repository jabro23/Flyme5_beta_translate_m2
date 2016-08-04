.class public Lcom/android/providers/downloads/ui/DownloadApplication;
.super Landroid/app/Application;
.source "DownloadApplication.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 16
    sput-object p0, Lcom/android/providers/downloads/ui/DownloadApplication;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 26
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 31
    return-void
.end method
