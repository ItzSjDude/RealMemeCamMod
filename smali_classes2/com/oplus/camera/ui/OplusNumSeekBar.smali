.class public Lcom/oplus/camera/ui/OplusNumSeekBar;
.super Landroid/widget/FrameLayout;
.source "OplusNumSeekBar.java"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/OplusNumSeekBar$a;
    }
.end annotation


# instance fields
.field protected A:F

.field protected B:Z

.field protected C:Z

.field protected D:Z

.field protected E:Z

.field protected F:Landroid/graphics/Rect;

.field protected G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

.field protected H:F

.field protected I:F

.field protected J:F

.field protected K:F

.field protected L:Landroid/graphics/Paint;

.field protected M:Landroid/graphics/Paint;

.field protected N:I

.field protected O:I

.field protected P:I

.field protected Q:I

.field protected R:I

.field protected S:Z

.field private T:I

.field private U:J

.field private V:F

.field private W:F

.field protected a:Z

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:Lcom/oplus/camera/ui/OplusNumSeekBar$a;

.field private ae:F

.field private af:F

.field private ag:J

.field private ah:J

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:I

.field protected x:I

.field protected y:I

.field protected z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/OplusNumSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/OplusNumSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->a:Z

    const-string v1, ""

    .line 66
    iput-object v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->b:Ljava/lang/String;

    .line 67
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->c:I

    .line 68
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->d:I

    .line 69
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->e:I

    .line 70
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->f:I

    .line 71
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->g:I

    .line 72
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->h:I

    .line 73
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    .line 74
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->j:I

    .line 75
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->k:I

    .line 76
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->l:I

    .line 77
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->m:I

    .line 78
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->n:I

    .line 79
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->o:I

    .line 80
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->p:I

    .line 81
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->q:I

    .line 82
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->r:I

    .line 83
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->s:I

    .line 84
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->t:I

    .line 85
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->u:I

    .line 86
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->v:I

    .line 87
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->w:I

    .line 88
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->x:I

    const/4 v2, 0x0

    .line 90
    iput v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->z:F

    .line 91
    iput v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->A:F

    .line 92
    iput-boolean v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->B:Z

    .line 93
    iput-boolean v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->C:Z

    .line 94
    iput-boolean v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->D:Z

    .line 95
    iput-boolean v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->E:Z

    const/4 v3, 0x0

    .line 96
    iput-object v3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->F:Landroid/graphics/Rect;

    .line 97
    iput-object v3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    .line 98
    iput v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->H:F

    .line 99
    iput v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->I:F

    .line 100
    iput v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->J:F

    .line 101
    iput v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->K:F

    .line 102
    iput-object v3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    .line 103
    iput-object v3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->M:Landroid/graphics/Paint;

    .line 104
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->N:I

    .line 105
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->O:I

    .line 106
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->P:I

    .line 107
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->Q:I

    .line 108
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->R:I

    .line 109
    iput-boolean v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->S:Z

    .line 111
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    const-wide/16 v4, 0x0

    .line 112
    iput-wide v4, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->U:J

    .line 113
    iput v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->V:F

    .line 114
    iput v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->W:F

    .line 115
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->aa:I

    .line 116
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ab:I

    .line 117
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ac:I

    .line 118
    iput-object v3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ad:Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    .line 119
    iput v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ae:F

    .line 120
    iput v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->af:F

    .line 121
    iput-wide v4, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ag:J

    .line 122
    iput-wide v4, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ah:J

    .line 135
    sget-object v2, Lcom/oplus/camera/R$styleable;->OplusNumSeekBar:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x7

    .line 136
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->N:I

    const/16 p3, 0x13

    .line 137
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->O:I

    const/4 p3, 0x6

    .line 138
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    const/4 p3, 0x5

    const/16 v2, 0x64

    .line 139
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->j:I

    .line 140
    iget p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    const/16 v2, 0x8

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    .line 142
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f070909

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/16 v2, 0x2e

    .line 141
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->c:I

    .line 144
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f0708fa

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/16 v2, 0xa

    .line 143
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->d:I

    .line 146
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f070905

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/16 v2, 0x1e

    .line 145
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->p:I

    .line 148
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f070904

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/16 v2, 0x1d

    .line 147
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->h:I

    .line 150
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f070906

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/16 v2, 0x20

    .line 149
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->s:I

    .line 152
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f0708fc

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/16 v2, 0xd

    .line 151
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->e:I

    .line 154
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f0708fb

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/16 v2, 0xb

    .line 153
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->f:I

    const p3, 0x7f06004d

    .line 155
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const/16 v3, 0x2c

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->m:I

    const v2, 0x7f060435

    .line 157
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const/16 v3, 0x2d

    .line 156
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->n:I

    .line 159
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x9

    .line 158
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->l:I

    .line 160
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    const/16 v2, 0xc

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->k:I

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f070907

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/16 v3, 0x2a

    .line 161
    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->t:I

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/16 v2, 0x1c

    .line 163
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->u:I

    .line 165
    iget p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->l:I

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->g:I

    .line 167
    iget p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->m:I

    const/16 v2, 0x22

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->v:I

    const p3, 0x7f060467

    .line 169
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/16 p3, 0x23

    .line 168
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->w:I

    const/16 p1, 0xc8

    .line 170
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->U:J

    const/16 p1, 0xe

    .line 171
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->o:I

    const/16 p1, 0x2b

    .line 172
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->x:I

    const/16 p1, 0x21

    .line 173
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->D:Z

    const/16 p1, 0x25

    .line 174
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->aa:I

    const/16 p1, 0x10

    .line 175
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ab:I

    const/16 p1, 0xf

    .line 176
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ac:I

    .line 178
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070902

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/16 p3, 0x18

    .line 177
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->q:I

    .line 180
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070903

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 179
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->r:I

    const/4 p1, 0x1

    const/16 p3, 0x11

    .line 181
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->a:Z

    .line 182
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    iget-boolean p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->a:Z

    if-eqz p2, :cond_0

    const-string v1, "%"

    :cond_0
    iput-object v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->b:Ljava/lang/String;

    .line 186
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    .line 187
    iget-object p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    iget-object p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 189
    iget-object p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 190
    iget-object p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    iget p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->v:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    iget p3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->t:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 192
    iget-object p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 194
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->M:Landroid/graphics/Paint;

    .line 195
    iget-object p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->M:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->M:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 197
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->M:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 198
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->M:Landroid/graphics/Paint;

    iget p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->v:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->M:Landroid/graphics/Paint;

    iget p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->u:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 200
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->M:Landroid/graphics/Paint;

    invoke-static {}, Lcom/oplus/camera/util/Util;->y()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 201
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(Landroid/graphics/Paint;)V

    .line 202
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->F:Landroid/graphics/Rect;

    .line 203
    invoke-direct {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->e()V

    .line 205
    invoke-direct {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->d()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/OplusNumSeekBar;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/OplusNumSeekBar;)Lcom/oplus/camera/ui/OplusNumSeekBar$a;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ad:Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0900de

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    iput-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    .line 260
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 262
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->N:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const v0, 0x7f070c88

    .line 263
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v0, 0x11

    .line 264
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 266
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v0, 0x51

    .line 267
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->setMax(I)V

    .line 273
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    new-instance v0, Lcom/oplus/camera/ui/OplusNumSeekBar$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/OplusNumSeekBar$1;-><init>(Lcom/oplus/camera/ui/OplusNumSeekBar;)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->setOnSeekBarChangeListener(Lcom/coui/appcompat/widget/seekbar/COUISeekBar$b;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/OplusNumSeekBar;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/OplusNumSeekBar;I)I
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->f(I)I

    move-result p0

    return p0
.end method

.method private b(Landroid/graphics/Paint;)Ljava/lang/String;
    .locals 5

    const/4 p0, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 225
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, p0

    if-lez v4, :cond_0

    move-object v0, v2

    move p0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->setClipChildren(Z)V

    .line 239
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->setClipToPadding(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->m:I

    .line 241
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f060435

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->n:I

    .line 242
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->m:I

    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->v:I

    .line 243
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f060467

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->w:I

    .line 244
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->aa:I

    .line 245
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c004f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 248
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(Landroid/view/View;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 308
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->j:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 309
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    const/16 v0, 0x64

    .line 310
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->j:I

    .line 313
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->j:I

    if-le v0, v1, :cond_1

    .line 315
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->j:I

    .line 316
    iput v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    .line 319
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    if-ge v0, v1, :cond_2

    .line 320
    iput v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    .line 323
    :cond_2
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->j:I

    if-le v0, v1, :cond_3

    .line 324
    iput v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    .line 327
    :cond_3
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->d:I

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->c:I

    const v2, 0x7f0708f7

    if-ge v0, v1, :cond_4

    .line 328
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->d:I

    .line 331
    :cond_4
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->h:I

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->d:I

    if-gt v0, v1, :cond_5

    .line 332
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->h:I

    .line 335
    :cond_5
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->j:I

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->V:F

    .line 336
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->c(I)Lcom/oplus/camera/ui/OplusNumSeekBar;

    return-void
.end method

.method private f(I)I
    .locals 2

    .line 304
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->V:F

    int-to-float p1, p1

    mul-float/2addr v1, p1

    iget-object p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getMax()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getMaxText()Ljava/lang/String;
    .locals 0

    .line 517
    iget p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->j:I

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMinText()Ljava/lang/String;
    .locals 0

    const/16 p0, -0x32

    .line 513
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/graphics/Paint;FLandroid/graphics/Rect;)F
    .locals 0

    .line 477
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p2, p0

    return p2
.end method

.method public a(I)Lcom/oplus/camera/ui/OplusNumSeekBar;
    .locals 1

    .line 525
    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->j:I

    .line 526
    iget p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->j:I

    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->V:F

    return-object p0
.end method

.method protected a()V
    .locals 4

    .line 460
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->P:I

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->R:I

    if-eq v0, v1, :cond_3

    .line 461
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 463
    iget-wide v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ah:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 464
    iget-wide v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ag:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 465
    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->Q:I

    iget-boolean v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->S:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    mul-int/lit16 v0, v0, 0x168

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    if-ltz v1, :cond_1

    .line 466
    rem-int/lit16 v1, v1, 0x168

    goto :goto_1

    .line 467
    :cond_1
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    .line 468
    :goto_1
    iput v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->P:I

    .line 469
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->invalidate()V

    goto :goto_2

    .line 471
    :cond_2
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->R:I

    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->P:I

    :cond_3
    :goto_2
    return-void
.end method

.method public a(IZ)V
    .locals 2

    if-ltz p1, :cond_0

    .line 431
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 432
    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 434
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->R:I

    if-ne p1, v0, :cond_1

    return-void

    .line 438
    :cond_1
    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->R:I

    if-eqz p2, :cond_5

    .line 441
    iget p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->P:I

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->Q:I

    .line 442
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ag:J

    .line 444
    iget p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->R:I

    iget p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->P:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 p2, 0xb4

    if-le p1, p2, :cond_3

    add-int/lit16 p1, p1, -0x168

    :cond_3
    if-ltz p1, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 450
    :goto_2
    iput-boolean p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->S:Z

    .line 451
    iget-wide v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ag:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x168

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ah:J

    goto :goto_3

    .line 453
    :cond_5
    iget p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->R:I

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->P:I

    .line 456
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->invalidate()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;F)V
    .locals 10

    .line 377
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    .line 378
    iget-boolean v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->E:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->w:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->v:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0xa

    .line 379
    iget-object v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->F:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const-string v4, "0123456789"

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 380
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x0

    .line 383
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_1

    move v3, v5

    .line 385
    :cond_1
    iget v4, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->x:I

    if-eqz v4, :cond_3

    .line 387
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->x:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    const-string v5, ""

    const-string v6, "[d%\u066a ]"

    if-eqz v3, :cond_2

    .line 390
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 392
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    .line 396
    :cond_4
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 397
    :goto_2
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->e(I)F

    move-result v5

    .line 398
    iget-object v6, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    const/16 v7, 0x64

    .line 399
    invoke-virtual {p0, v7}, Lcom/oplus/camera/ui/OplusNumSeekBar;->e(I)F

    move-result v7

    add-float/2addr v7, v4

    add-float/2addr v7, v6

    .line 400
    iget v8, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->A:F

    .line 402
    iget-boolean v9, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->D:Z

    if-eqz v9, :cond_5

    .line 403
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getPaddingStart()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getPaddingEnd()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v8, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v8, v7

    .line 404
    iget v7, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->aa:I

    int-to-float v7, v7

    sub-float/2addr p2, v7

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr p2, v7

    .line 407
    :cond_5
    iget-object v7, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->F:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p2, v7}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(Landroid/graphics/Paint;FLandroid/graphics/Rect;)F

    move-result p2

    if-eqz v3, :cond_7

    .line 410
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getPaddingEnd()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v8, v0

    if-eqz v2, :cond_6

    .line 413
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v8

    sub-float/2addr v0, v4

    iget-object v3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, p2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 416
    :cond_6
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v8

    sub-float/2addr v1, v4

    sub-float/2addr v1, v5

    iget-object v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 417
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v8

    sub-float/2addr v1, v4

    sub-float/2addr v1, v5

    sub-float/2addr v1, v6

    iget-object p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 419
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getPaddingStart()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v8, v0

    if-eqz v2, :cond_8

    .line 422
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v8, p2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 425
    :cond_8
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object v0

    add-float/2addr v8, v4

    iget-object v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, p2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 426
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->b:Ljava/lang/String;

    add-float/2addr v8, v5

    iget-object p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, p2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method protected a(Landroid/graphics/Paint;)V
    .locals 2

    .line 209
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->b(Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    .line 210
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->H:F

    .line 211
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->I:F

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->J:F

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->K:F

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 642
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 643
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 644
    iget-object p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 646
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reflectSomethingNeed, something may be wrong: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusNumSeekBar"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(I)Lcom/oplus/camera/ui/OplusNumSeekBar;
    .locals 2

    .line 531
    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    .line 532
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->j:I

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->V:F

    .line 533
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->setStartFromMiddle(Z)V

    return-object p0
.end method

.method public b()V
    .locals 3

    .line 481
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->U:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/OplusNumSeekBar$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/OplusNumSeekBar$2;-><init>(Lcom/oplus/camera/ui/OplusNumSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 507
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ad:Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/oplus/camera/ui/OplusNumSeekBar$a;->b(Lcom/oplus/camera/ui/OplusNumSeekBar;I)V

    :cond_0
    return-void
.end method

.method public c(I)Lcom/oplus/camera/ui/OplusNumSeekBar;
    .locals 2

    .line 543
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    if-eq v0, p1, :cond_0

    .line 544
    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    .line 546
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ad:Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    if-eqz p1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/oplus/camera/ui/OplusNumSeekBar$a;->a(Lcom/oplus/camera/ui/OplusNumSeekBar;IZ)V

    .line 551
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->C:Z

    if-nez p1, :cond_1

    .line 552
    iget p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->W:F

    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->V:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ae:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->A:F

    .line 555
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->V:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 556
    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getMax()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->V:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->setProgress(I)V

    :cond_2
    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 571
    iget-boolean p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->C:Z

    return p0
.end method

.method public d(I)Lcom/oplus/camera/ui/OplusNumSeekBar;
    .locals 0

    .line 600
    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->o:I

    return-object p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 370
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 372
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getYTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method protected e(I)F
    .locals 1

    if-gez p1, :cond_0

    .line 624
    iget p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->H:F

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->e(I)F

    move-result p0

    add-float/2addr p1, p0

    return p1

    :cond_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    .line 626
    iget p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->I:F

    return p0

    :cond_1
    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    .line 628
    iget p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->J:F

    return p0

    .line 630
    :cond_2
    iget p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->K:F

    return p0
.end method

.method public getMax()F
    .locals 0

    .line 539
    iget p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->j:I

    int-to-float p0, p0

    return p0
.end method

.method public getMin()F
    .locals 0

    .line 521
    iget p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->i:I

    int-to-float p0, p0

    return p0
.end method

.method public getProgress()I
    .locals 0

    .line 563
    iget p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    return p0
.end method

.method protected getYTop()I
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public invalidate()V
    .locals 0

    .line 652
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 654
    iget-object p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    if-eqz p0, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ad:Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/camera/ui/OplusNumSeekBar$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 674
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 341
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 343
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->F:Landroid/graphics/Rect;

    const/4 v0, 0x0

    const-string v1, "0123456789"

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v0, v2, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 344
    invoke-direct {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getMinText()Ljava/lang/String;

    move-result-object p1

    .line 345
    iget-object p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->F:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 346
    iget p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->p:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->F:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 347
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p1

    iget p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->z:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ae:F

    .line 348
    invoke-direct {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getMaxText()Ljava/lang/String;

    move-result-object p1

    .line 349
    iget-object p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->F:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 350
    iget p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->p:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->F:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 351
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->af:F

    .line 353
    iget p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ab:I

    if-eqz p1, :cond_0

    int-to-float p2, p1

    iget v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ae:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    int-to-float p1, p1

    .line 354
    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ae:F

    .line 357
    :cond_0
    iget p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ac:I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ac:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->af:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ac:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->af:F

    .line 361
    :cond_1
    iget p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->af:F

    iget p2, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ae:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->W:F

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 588
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 589
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "progress"

    .line 590
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    const-string v0, "save_instance"

    .line 591
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 592
    iget p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->c(I)Lcom/oplus/camera/ui/OplusNumSeekBar;

    return-void

    .line 596
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 580
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 581
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "save_instance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 582
    iget p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->T:I

    int-to-float p0, p0

    const-string v1, "progress"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public postInvalidate()V
    .locals 0

    .line 661
    invoke-super {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 663
    iget-object p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    if-eqz p0, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 253
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 255
    iget-object p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->setEnabled(Z)V

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 2

    .line 607
    iput-boolean p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->E:Z

    .line 609
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->L:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 610
    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->w:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->v:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 611
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->M:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->w:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->v:I

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 614
    :cond_2
    iget-boolean p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->E:Z

    if-eqz p1, :cond_3

    const p1, 0x7f060435

    goto :goto_2

    :cond_3
    const p1, 0x7f060434

    .line 616
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    const-string v0, "mBackgroundColor"

    .line 617
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 619
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->invalidate()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/oplus/camera/ui/OplusNumSeekBar$a;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->ad:Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    return-void
.end method

.method public setThumbOnDragging(Z)V
    .locals 0

    .line 575
    iput-boolean p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->C:Z

    return-void
.end method
