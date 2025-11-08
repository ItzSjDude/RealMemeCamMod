.class public Lcom/oplus/compat/app/IActivityTaskManagerNative;
.super Ljava/lang/Object;
.source "IActivityTaskManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/app/IActivityTaskManagerNative$TaskStackListenerR;,
        Lcom/oplus/compat/app/IActivityTaskManagerNative$TaskStackListenerAfterS;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/compat/app/b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/compat/app/IActivityTaskManagerNative;->a:Ljava/util/Map;

    return-void
.end method
