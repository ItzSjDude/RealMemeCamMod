.class public Landroid/app/OplusWhiteListManager;
.super Ljava/lang/Object;
.source "OplusWhiteListManager.java"


# static fields
.field private static sInstance:Landroid/app/OplusWhiteListManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/OplusWhiteListManager;
    .locals 1

    sget-object v0, Landroid/app/OplusWhiteListManager;->sInstance:Landroid/app/OplusWhiteListManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/OplusWhiteListManager;

    invoke-direct {v0, p0}, Landroid/app/OplusWhiteListManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/app/OplusWhiteListManager;->sInstance:Landroid/app/OplusWhiteListManager;

    :cond_0
    sget-object v0, Landroid/app/OplusWhiteListManager;->sInstance:Landroid/app/OplusWhiteListManager;

    return-object v0
.end method


# virtual methods
.method public addAppToDynamicList(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isAppInDynamicList(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeAppFromDynamicList(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
