.class public Lmirror/android/app/SystemServiceRegistry$StaticServiceFetcher;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmirror/android/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmirror/android/app/SystemServiceRegistry$StaticServiceFetcher$RefInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCachedInstance(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 32
    sget-object v0, Lmirror/android/app/SystemServiceRegistry$StaticServiceFetcher$RefInfo;->mCachedInstance:Lcom/oplus/utils/reflect/RefObject;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
