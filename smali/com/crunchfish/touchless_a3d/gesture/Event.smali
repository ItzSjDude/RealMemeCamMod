.class public final Lcom/crunchfish/touchless_a3d/gesture/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private final mGesture:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

.field private mIdentifiableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/crunchfish/touchless_a3d/gesture/Identifiable;",
            ">;"
        }
    .end annotation
.end field

.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/crunchfish/touchless_a3d/gesture/Gesture;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/crunchfish/touchless_a3d/gesture/Event;->mGesture:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    .line 64
    iput-object p2, p0, Lcom/crunchfish/touchless_a3d/gesture/Event;->mText:Ljava/lang/String;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/crunchfish/touchless_a3d/gesture/Event;->mIdentifiableMap:Ljava/util/HashMap;

    return-void
.end method

.method private addPose(Ljava/lang/String;IIIII)V
    .locals 8

    .line 70
    iget-object p0, p0, Lcom/crunchfish/touchless_a3d/gesture/Event;->mIdentifiableMap:Ljava/util/HashMap;

    new-instance v7, Lcom/crunchfish/touchless_a3d/gesture/Pose;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/crunchfish/touchless_a3d/gesture/Pose;-><init>(Ljava/lang/String;IIIII)V

    invoke-virtual {p0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addSwipe(Ljava/lang/String;I)V
    .locals 1

    .line 75
    sget-object v0, Lcom/crunchfish/touchless_a3d/gesture/Swipe$Direction;->SWIPE_LEFT:Lcom/crunchfish/touchless_a3d/gesture/Swipe$Direction;

    invoke-virtual {v0}, Lcom/crunchfish/touchless_a3d/gesture/Swipe$Direction;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 76
    iget-object p0, p0, Lcom/crunchfish/touchless_a3d/gesture/Event;->mIdentifiableMap:Ljava/util/HashMap;

    new-instance p2, Lcom/crunchfish/touchless_a3d/gesture/Swipe;

    sget-object v0, Lcom/crunchfish/touchless_a3d/gesture/Swipe$Direction;->SWIPE_LEFT:Lcom/crunchfish/touchless_a3d/gesture/Swipe$Direction;

    invoke-direct {p2, p1, v0}, Lcom/crunchfish/touchless_a3d/gesture/Swipe;-><init>(Ljava/lang/String;Lcom/crunchfish/touchless_a3d/gesture/Swipe$Direction;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/crunchfish/touchless_a3d/gesture/Event;->mIdentifiableMap:Ljava/util/HashMap;

    new-instance p2, Lcom/crunchfish/touchless_a3d/gesture/Swipe;

    sget-object v0, Lcom/crunchfish/touchless_a3d/gesture/Swipe$Direction;->SWIPE_RIGHT:Lcom/crunchfish/touchless_a3d/gesture/Swipe$Direction;

    invoke-direct {p2, p1, v0}, Lcom/crunchfish/touchless_a3d/gesture/Swipe;-><init>(Ljava/lang/String;Lcom/crunchfish/touchless_a3d/gesture/Swipe$Direction;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/crunchfish/touchless_a3d/gesture/Event;->mGesture:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    invoke-virtual {v0, p0}, Lcom/crunchfish/touchless_a3d/gesture/Gesture;->dispatchEvent(Lcom/crunchfish/touchless_a3d/gesture/Event;)V

    return-void
.end method

.method public getIdentifiable(Ljava/lang/String;)Lcom/crunchfish/touchless_a3d/gesture/Identifiable;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/crunchfish/touchless_a3d/gesture/Event;->mIdentifiableMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/crunchfish/touchless_a3d/gesture/Identifiable;

    return-object p0
.end method

.method public getIdentifiables()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/crunchfish/touchless_a3d/gesture/Identifiable;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/crunchfish/touchless_a3d/gesture/Event;->mIdentifiableMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/crunchfish/touchless_a3d/gesture/Event;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "text=\'"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crunchfish/touchless_a3d/gesture/Event;->mText:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', identifiables=["

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Lcom/crunchfish/touchless_a3d/gesture/Event;->getIdentifiables()Ljava/util/Collection;

    move-result-object p0

    .line 89
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 90
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "]"

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
