.class public Lcom/oplus/epona/provider/ProviderMethodInfo;
.super Ljava/lang/Object;
.source "ProviderMethodInfo.java"


# instance fields
.field private mAllAppOp:[Ljava/lang/String;

.field private mAnyAppOp:[Ljava/lang/String;

.field private mMethodName:Ljava/lang/String;

.field private mMethodParams:[Ljava/lang/String;

.field private mSpecifyAppOp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oplus/epona/provider/ProviderMethodInfo;->mMethodName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/oplus/epona/provider/ProviderMethodInfo;->mMethodParams:[Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/oplus/epona/provider/ProviderMethodInfo;->mSpecifyAppOp:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/oplus/epona/provider/ProviderMethodInfo;->mAnyAppOp:[Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/oplus/epona/provider/ProviderMethodInfo;->mAllAppOp:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAllAppOp()[Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/epona/provider/ProviderMethodInfo;->mAllAppOp:[Ljava/lang/String;

    return-object p0
.end method

.method public getAnyAppOp()[Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oplus/epona/provider/ProviderMethodInfo;->mAnyAppOp:[Ljava/lang/String;

    return-object p0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oplus/epona/provider/ProviderMethodInfo;->mMethodName:Ljava/lang/String;

    return-object p0
.end method

.method public getMethodParams()[Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oplus/epona/provider/ProviderMethodInfo;->mMethodParams:[Ljava/lang/String;

    return-object p0
.end method

.method public getSpecifyAppOp()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/epona/provider/ProviderMethodInfo;->mSpecifyAppOp:Ljava/lang/String;

    return-object p0
.end method

.method public hasAppOpStrAnnotation()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/oplus/epona/provider/ProviderMethodInfo;->mSpecifyAppOp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/epona/provider/ProviderMethodInfo;->mAnyAppOp:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/epona/provider/ProviderMethodInfo;->mAllAppOp:[Ljava/lang/String;

    array-length p0, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
