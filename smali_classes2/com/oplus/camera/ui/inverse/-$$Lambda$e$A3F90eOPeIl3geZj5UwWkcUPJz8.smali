.class public final synthetic Lcom/oplus/camera/ui/inverse/-$$Lambda$e$A3F90eOPeIl3geZj5UwWkcUPJz8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/e$c;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Z

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$A3F90eOPeIl3geZj5UwWkcUPJz8;->f$0:I

    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$A3F90eOPeIl3geZj5UwWkcUPJz8;->f$1:Z

    iput p3, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$A3F90eOPeIl3geZj5UwWkcUPJz8;->f$2:I

    return-void
.end method


# virtual methods
.method public final call(Lcom/oplus/camera/ui/inverse/InverseMaskView;)V
    .locals 2

    iget v0, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$A3F90eOPeIl3geZj5UwWkcUPJz8;->f$0:I

    iget-boolean v1, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$A3F90eOPeIl3geZj5UwWkcUPJz8;->f$1:Z

    iget p0, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$A3F90eOPeIl3geZj5UwWkcUPJz8;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/camera/ui/inverse/e;->lambda$setMaskLayoutMode$10(IZILcom/oplus/camera/ui/inverse/InverseMaskView;)V

    return-void
.end method
