.class public final synthetic Lcom/oplus/camera/util/-$$Lambda$Util$_wWOSaQw6lIk4_hbUdcJDEydh44;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/oplus/camera/util/-$$Lambda$Util$_wWOSaQw6lIk4_hbUdcJDEydh44;->f$0:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/camera/util/-$$Lambda$Util$_wWOSaQw6lIk4_hbUdcJDEydh44;->f$0:Z

    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/util/Util;->lambda$_wWOSaQw6lIk4_hbUdcJDEydh44(ZLandroid/util/Size;Landroid/util/Size;)I

    move-result p0

    return p0
.end method
