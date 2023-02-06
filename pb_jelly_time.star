"""
Applet: PB Jelly Time
Summary: Banana Dancing
Description: The Peanut Butter Jelly Time Dancing Banana.
Author: jay-medina
"""

load("render.star", "render")
load("schema.star", "schema")

DEFAULT_WHO = "world"

def main(_config):
    # who = config.str("who", DEFAULT_WHO)
    # message = "Hello, {}!".format(who)
    return render_banana()

def get_schema():
    return schema.Schema(
        version = "1",
        fields = [
            schema.Text(
                id = "who",
                name = "Who?",
                desc = "Who to say hello to.",
                icon = "user",
            ),
        ],
    )




BLACK = "#000"
BORDER = "#555"
WHITE = "#FFF"
DARK_YELLOW = "#9C9C30"
YELLOW = "#FFFF54"
MUSTARD_YELLOW = "#CECE42"
RED = "#EA3323"

def render_banana():
    animate_boxes = render.Animation(
        children = [
            render_frames(get_frame_1_rows()),
            render_frames(get_frame_2_rows()),
            render_frames(get_frame_3_rows()),
            render_frames(get_frame_4_rows()),
            render_frames(get_frame_1_rows(), reverse=True),
            render_frames(get_frame_2_rows(), reverse=True),
            render_frames(get_frame_3_rows(), reverse=True),
            render_frames(get_frame_4_rows(), reverse=True),
        ],
    )

    return render.Root(
        delay = 100,
        child = render.Box(
            color = BLACK,
            child = animate_boxes,
        ),
    )

def render_frames(frame_rows, reverse = False):
    """Displays the first banana frame

    Args:
        frame_rows: frame rows
        reverse: reverses the image

    Returns:
        Column of rows
    """
    rows = frame_rows

    if reverse:
        rows = [reversed(r) for r in rows]

    rows = [render.Row(children = r) for r in rows]

    return render.Column(
        expanded = True,
        main_align = "end",
        cross_align = "start",
        children = rows,
    )

def renderSection(width, color):
    return render.Box(width = width, height = 1, color = color)

def get_frame_1_rows():
    return [
        # --------------------------
        # Forehead
        [
            renderSection(9, BLACK),
            renderSection(2, BORDER),
            renderSection(10, BLACK),
        ],
        [
            renderSection(8, BLACK),
            renderSection(4, BORDER),
            renderSection(9, BLACK),
        ],
        [
            renderSection(8, BLACK),
            renderSection(1, BORDER),
            renderSection(2, DARK_YELLOW),
            renderSection(1, BORDER),
            renderSection(9, BLACK),
        ],
        [
            renderSection(8, BLACK),
            renderSection(1, BORDER),
            renderSection(1, DARK_YELLOW),
            renderSection(1, YELLOW),
            renderSection(2, BORDER),
            renderSection(8, BLACK),
        ],
        [
            renderSection(8, BLACK),
            renderSection(1, BORDER),
            renderSection(3, YELLOW),
            renderSection(2, BORDER),
            renderSection(7, BLACK),
        ],
        [
            renderSection(8, BLACK),
            renderSection(1, BORDER),
            renderSection(3, YELLOW),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(6, BLACK),
        ],
        [
            renderSection(8, BLACK),
            renderSection(1, BORDER),
            renderSection(3, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(6, BLACK),
        ],
        [
            renderSection(6, BLACK),
            renderSection(5, BORDER),
            renderSection(2, YELLOW),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(5, BLACK),
        ],

        # --------------------------
        # Eyes
        [
            renderSection(5, BLACK),
            renderSection(1, BORDER),
            renderSection(1, WHITE),
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
            renderSection(1, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(5, BLACK),
        ],
        [
            renderSection(5, BLACK),
            renderSection(4, BORDER),
            renderSection(2, WHITE),
            renderSection(1, BORDER),
            renderSection(1, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(5, BLACK),
        ],
        [
            renderSection(5, BLACK),
            renderSection(1, BORDER),
            renderSection(1, WHITE),
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
            renderSection(1, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(5, BLACK),
        ],
        [
            renderSection(6, BLACK),
            renderSection(5, BORDER),
            renderSection(2, YELLOW),
            renderSection(1, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(5, BLACK),
        ],
        # --------------------------
        # Mouth
        [
            renderSection(7, BLACK),
            renderSection(1, BORDER),
            renderSection(3, YELLOW),
            renderSection(3, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(5, BLACK),
        ],
        [
            renderSection(7, BLACK),
            renderSection(4, BORDER),
            renderSection(2, RED),
            renderSection(1, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(5, BLACK),
        ],
        [
            renderSection(8, BLACK),
            renderSection(1, BORDER),
            renderSection(3, RED),
            renderSection(1, BORDER),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(5, BLACK),
        ],
        [
            renderSection(8, BLACK),
            renderSection(1, BORDER),
            renderSection(1, RED),
            renderSection(2, BORDER),
            renderSection(1, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(5, BLACK),
        ],
        [
            renderSection(7, BLACK),
            renderSection(3, BORDER),
            renderSection(3, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(5, BLACK),
        ],
        # --------------------------
        # arms
        [
            renderSection(1, BLACK),
            renderSection(3, BORDER),
            renderSection(3, BLACK),
            renderSection(1, BORDER),
            renderSection(4, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(1, BLACK),
            renderSection(3, BORDER),
            renderSection(1, BLACK),
        ],
        [
            renderSection(1, BORDER),
            renderSection(2, WHITE),
            renderSection(2, BORDER),
            renderSection(1, BLACK),
            renderSection(2, BORDER),
            renderSection(4, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(1, BLACK),
            renderSection(2, BORDER),
            renderSection(2, WHITE),
            renderSection(1, BORDER),
        ],
        [
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
            renderSection(1, BLACK),
            renderSection(1, BORDER),
            renderSection(4, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(1, BLACK),
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
        ],
        [
            renderSection(1, BORDER),
            renderSection(2, WHITE),
            renderSection(2, BORDER),
            renderSection(1, BLACK),
            renderSection(1, BORDER),
            renderSection(3, YELLOW),
            renderSection(3, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(2, BLACK),
            renderSection(2, BORDER),
            renderSection(2, WHITE),
            renderSection(1, BORDER),
        ],
        [
            renderSection(1, BLACK),
            renderSection(3, BORDER),
            renderSection(1, BLACK),
            renderSection(2, BORDER),
            renderSection(2, YELLOW),
            renderSection(3, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(2, BLACK),
            renderSection(4, BORDER),
            renderSection(1, BLACK),
        ],
        [
            renderSection(3, BLACK),
            renderSection(1, BORDER),
            renderSection(1, BLACK),
            renderSection(1, BORDER),
            renderSection(2, YELLOW),
            renderSection(3, MUSTARD_YELLOW),
            renderSection(3, BORDER),
            renderSection(1, BLACK),
            renderSection(2, BORDER),
            renderSection(4, BLACK),
        ],
        [
            renderSection(3, BLACK),
            renderSection(4, BORDER),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(3, BORDER),
            renderSection(1, BLACK),
            renderSection(3, BORDER),
            renderSection(5, BLACK),
        ],
        [
            renderSection(2, BLACK),
            renderSection(13, BORDER),
            renderSection(6, BLACK),
        ],
        # --------------------------
        # shoes
        [
            renderSection(1, BLACK),
            renderSection(3, BORDER),
            renderSection(8, BLACK),
            renderSection(4, BORDER),
            renderSection(5, BLACK),
        ],
        [
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(3, BORDER),
            renderSection(3, BLACK),
            renderSection(3, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
            renderSection(4, BLACK),
        ],
        [
            renderSection(1, BORDER),
            renderSection(5, WHITE),
            renderSection(1, BORDER),
            renderSection(3, BLACK),
            renderSection(1, BORDER),
            renderSection(5, WHITE),
            renderSection(1, BORDER),
            renderSection(4, BLACK),
        ],
        [
            renderSection(1, BLACK),
            renderSection(6, BORDER),
            renderSection(3, BLACK),
            renderSection(6, BORDER),
            renderSection(5, BLACK),
        ],
    ]

def get_frame_2_rows():
    return [
        # --------------------------
        # Forehead
        [
            renderSection(11, BLACK),
            renderSection(2, BORDER),
            renderSection(12, BLACK),
        ],
        [
            renderSection(10, BLACK),
            renderSection(4, BORDER),
            renderSection(11, BLACK),
        ],
        [
            renderSection(10, BLACK),
            renderSection(1, BORDER),
            renderSection(2, DARK_YELLOW),
            renderSection(1, BORDER),
            renderSection(11, BLACK),
        ],
        [
            renderSection(10, BLACK),
            renderSection(1, BORDER),
            renderSection(1, DARK_YELLOW),
            renderSection(1, YELLOW),
            renderSection(2, BORDER),
            renderSection(10, BLACK),
        ],
        [
            renderSection(10, BLACK),
            renderSection(1, BORDER),
            renderSection(3, YELLOW),
            renderSection(2, BORDER),
            renderSection(9, BLACK),
        ],
        [
            renderSection(10, BLACK),
            renderSection(1, BORDER),
            renderSection(3, YELLOW),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(8, BLACK),
        ],
        [
            renderSection(10, BLACK),
            renderSection(1, BORDER),
            renderSection(3, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(8, BLACK),
        ],
        [
            renderSection(8, BLACK),
            renderSection(5, BORDER),
            renderSection(2, YELLOW),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(7, BLACK),
        ],
        # --------------------------
        # Eyes
        [
            renderSection(7, BLACK),
            renderSection(1, BORDER),
            renderSection(1, WHITE),
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
            renderSection(1, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(7, BLACK),
        ],
        [
            renderSection(7, BLACK),
            renderSection(4, BORDER),
            renderSection(2, WHITE),
            renderSection(1, BORDER),
            renderSection(1, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(7, BLACK),
        ],
        [
            renderSection(7, BLACK),
            renderSection(1, BORDER),
            renderSection(1, WHITE),
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
            renderSection(1, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(7, BLACK),
        ],
        [
            renderSection(8, BLACK),
            renderSection(5, BORDER),
            renderSection(2, YELLOW),
            renderSection(1, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(7, BLACK),
        ],
        # --------------------------
        # Mouth
        [
            renderSection(9, BLACK),
            renderSection(1, BORDER),
            renderSection(3, YELLOW),
            renderSection(3, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(7, BLACK),
        ],
        [
            renderSection(9, BLACK),
            renderSection(4, BORDER),
            renderSection(2, RED),
            renderSection(1, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(7, BLACK),
        ],
        [
            renderSection(10, BLACK),
            renderSection(1, BORDER),
            renderSection(3, RED),
            renderSection(1, BORDER),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(7, BLACK),
        ],
        [
            renderSection(10, BLACK),
            renderSection(1, BORDER),
            renderSection(1, RED),
            renderSection(2, BORDER),
            renderSection(1, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(7, BLACK),
        ],
        [
            renderSection(9, BLACK),
            renderSection(3, BORDER),
            renderSection(3, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(7, BLACK),
        ],
        [
            renderSection(1, BLACK),
            renderSection(3, BORDER),
            renderSection(5, BLACK),
            renderSection(1, BORDER),
            renderSection(5, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(3, BLACK),
            renderSection(3, BORDER),
            renderSection(1, BLACK),
        ],
        [
            renderSection(1, BORDER),
            renderSection(2, WHITE),
            renderSection(2, BORDER),
            renderSection(4, BLACK),
            renderSection(1, BORDER),
            renderSection(4, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(2, BLACK),
            renderSection(2, BORDER),
            renderSection(2, WHITE),
            renderSection(1, BORDER),
        ],
        [
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
            renderSection(3, BLACK),
            renderSection(2, BORDER),
            renderSection(4, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(3, BLACK),
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
        ],
        [
            renderSection(1, BORDER),
            renderSection(2, WHITE),
            renderSection(2, BORDER),
            renderSection(3, BLACK),
            renderSection(1, BORDER),
            renderSection(4, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(3, BLACK),
            renderSection(2, BORDER),
            renderSection(2, WHITE),
            renderSection(1, BORDER),
        ],
        [
            renderSection(1, BLACK),
            renderSection(5, BORDER),
            renderSection(1, BLACK),
            renderSection(2, BORDER),
            renderSection(3, YELLOW),
            renderSection(3, MUSTARD_YELLOW),
            renderSection(3, BORDER),
            renderSection(1, BLACK),
            renderSection(5, BORDER),
            renderSection(1, BLACK),
        ],
        [
            renderSection(5, BLACK),
            renderSection(4, BORDER),
            renderSection(2, YELLOW),
            renderSection(3, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(1, BLACK),
            renderSection(3, BORDER),
            renderSection(5, BLACK),
        ],
        [
            renderSection(7, BLACK),
            renderSection(1, BORDER),
            renderSection(2, YELLOW),
            renderSection(3, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(10, BLACK),
        ],
        [
            renderSection(6, BLACK),
            renderSection(3, BORDER),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(3, BORDER),
            renderSection(11, BLACK),
        ],
        [
            renderSection(5, BLACK),
            renderSection(7, BORDER),
            renderSection(1, BLACK),
            renderSection(2, BORDER),
            renderSection(10, BLACK),
        ],
        # -----------
        # Legs
        [
            renderSection(5, BLACK),
            renderSection(1, BORDER),
            renderSection(8, BLACK),
            renderSection(1, BORDER),
            renderSection(10, BLACK),
        ],
        [
            renderSection(3, BLACK),
            renderSection(4, BORDER),
            renderSection(7, BLACK),
            renderSection(4, BORDER),
            renderSection(7, BLACK),
        ],
        [
            renderSection(2, BLACK),
            renderSection(1, BORDER),
            renderSection(4, WHITE),
            renderSection(2, BORDER),
            renderSection(3, BLACK),
            renderSection(2, BORDER),
            renderSection(4, WHITE),
            renderSection(1, BORDER),
            renderSection(6, BLACK),
        ],
        [
            renderSection(2, BLACK),
            renderSection(1, BORDER),
            renderSection(5, WHITE),
            renderSection(1, BORDER),
            renderSection(3, BLACK),
            renderSection(1, BORDER),
            renderSection(5, WHITE),
            renderSection(1, BORDER),
            renderSection(6, BLACK),
        ],
        [
            renderSection(3, BLACK),
            renderSection(5, BORDER),
            renderSection(5, BLACK),
            renderSection(5, BORDER),
            renderSection(7, BLACK),
        ],
    ]

def get_frame_3_rows():
    return [
        # --------------------------
        # Forehead
        [
            renderSection(15, BLACK),
            renderSection(2, BORDER),
            renderSection(15, BLACK),
        ],
        [
            renderSection(14, BLACK),
            renderSection(1, BORDER),
            renderSection(2, DARK_YELLOW),
            renderSection(1, BORDER),
            renderSection(14, BLACK),
        ],
        [
            renderSection(14, BLACK),
            renderSection(1, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, DARK_YELLOW),
            renderSection(1, BORDER),
            renderSection(14, BLACK),
        ],
        [
            renderSection(13, BLACK),
            renderSection(2, BORDER),
            renderSection(2, YELLOW),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(13, BLACK),
        ],
        [
            renderSection(13, BLACK),
            renderSection(1, BORDER),
            renderSection(3, YELLOW),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(13, BLACK),
        ],
        [
            renderSection(13, BLACK),
            renderSection(1, BORDER),
            renderSection(4, YELLOW),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(12, BLACK),
        ],

        # --------------------------
        # Eyes & Hands
        [
            renderSection(1, BLACK),
            renderSection(3, BORDER),
            renderSection(8, BLACK),
            renderSection(3, BORDER),
            renderSection(1, YELLOW),
            renderSection(4, BORDER),
            renderSection(8, BLACK),
            renderSection(3, BORDER),
            renderSection(1, BLACK),
        ],
        [
            renderSection(1, BORDER),
            renderSection(2, WHITE),
            renderSection(2, BORDER),
            renderSection(6, BLACK),
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(2, BORDER),
            renderSection(6, BLACK),
            renderSection(2, BORDER),
            renderSection(2, WHITE),
            renderSection(1, BORDER),
        ],
        [
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
            renderSection(6, BLACK),
            renderSection(1, BORDER),
            renderSection(1, WHITE),
            renderSection(1, BORDER),
            renderSection(1, WHITE),
            renderSection(1, BORDER),
            renderSection(1, WHITE),
            renderSection(1, BORDER),
            renderSection(1, WHITE),
            renderSection(2, BORDER),
            renderSection(6, BLACK),
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
        ],
        [
            renderSection(1, BORDER),
            renderSection(2, WHITE),
            renderSection(2, BORDER),
            renderSection(6, BLACK),
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(2, BORDER),
            renderSection(6, BLACK),
            renderSection(2, BORDER),
            renderSection(2, WHITE),
            renderSection(1, BORDER),
        ],
        [
            renderSection(1, BLACK),
            renderSection(4, BORDER),
            renderSection(7, BLACK),
            renderSection(3, BORDER),
            renderSection(1, YELLOW),
            renderSection(3, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(6, BLACK),
            renderSection(4, BORDER),
            renderSection(1, BLACK),
        ],
        # --------------------------
        # Mouth & Arms
        [
            renderSection(4, BLACK),
            renderSection(3, BORDER),
            renderSection(5, BLACK),
            renderSection(1, BORDER),
            renderSection(5, YELLOW),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(4, BLACK),
            renderSection(3, BORDER),
            renderSection(4, BLACK),
        ],
        [
            renderSection(6, BLACK),
            renderSection(3, BORDER),
            renderSection(3, BLACK),
            renderSection(6, BORDER),
            renderSection(1, RED),
            renderSection(2, BORDER),
            renderSection(2, BLACK),
            renderSection(3, BORDER),
            renderSection(6, BLACK),
        ],
        [
            renderSection(8, BLACK),
            renderSection(3, BORDER),
            renderSection(1, BLACK),
            renderSection(1, BORDER),
            renderSection(5, RED),
            renderSection(1, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(1, BLACK),
            renderSection(2, BORDER),
            renderSection(8, BLACK),
        ],
        [
            renderSection(10, BLACK),
            renderSection(4, BORDER),
            renderSection(3, RED),
            renderSection(1, BORDER),
            renderSection(1, YELLOW),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(3, BORDER),
            renderSection(9, BLACK),
        ],
        [
            renderSection(12, BLACK),
            renderSection(1, BORDER),
            renderSection(1, YELLOW),
            renderSection(3, BORDER),
            renderSection(2, YELLOW),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(11, BLACK),
        ],
        # -----------
        # Body
        [
            renderSection(12, BLACK),
            renderSection(1, BORDER),
            renderSection(5, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(11, BLACK),
        ],
        [
            renderSection(12, BLACK),
            renderSection(1, BORDER),
            renderSection(5, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(11, BLACK),
        ],
        [
            renderSection(12, BLACK),
            renderSection(1, BORDER),
            renderSection(5, YELLOW),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(11, BLACK),
        ],
        [
            renderSection(12, BLACK),
            renderSection(1, BORDER),
            renderSection(4, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(12, BLACK),
        ],
        [
            renderSection(12, BLACK),
            renderSection(1, BORDER),
            renderSection(4, YELLOW),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(12, BLACK),
        ],
        [
            renderSection(12, BLACK),
            renderSection(1, BORDER),
            renderSection(2, YELLOW),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(13, BLACK),
        ],
        [
            renderSection(12, BLACK),
            renderSection(3, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(2, BORDER),
            renderSection(14, BLACK),
        ],
        # -----------
        # Legs
        [
            renderSection(13, BLACK),
            renderSection(5, BORDER),
            renderSection(14, BLACK),
        ],
        [
            renderSection(13, BLACK),
            renderSection(1, BORDER),
            renderSection(3, BLACK),
            renderSection(1, BORDER),
            renderSection(14, BLACK),
        ],
        [
            renderSection(12, BLACK),
            renderSection(2, BORDER),
            renderSection(3, BLACK),
            renderSection(2, BORDER),
            renderSection(13, BLACK),
        ],
        [
            renderSection(12, BLACK),
            renderSection(1, BORDER),
            renderSection(5, BLACK),
            renderSection(1, BORDER),
            renderSection(13, BLACK),
        ],
        [
            renderSection(9, BLACK),
            renderSection(5, BORDER),
            renderSection(3, BLACK),
            renderSection(5, BORDER),
            renderSection(10, BLACK),
        ],
        [
            renderSection(7, BLACK),
            renderSection(2, BORDER),
            renderSection(4, WHITE),
            renderSection(1, BORDER),
            renderSection(3, BLACK),
            renderSection(1, BORDER),
            renderSection(4, WHITE),
            renderSection(2, BORDER),
            renderSection(8, BLACK),
        ],
        [
            renderSection(7, BLACK),
            renderSection(1, BORDER),
            renderSection(4, WHITE),
            renderSection(2, BORDER), 
            renderSection(3, BLACK),
            renderSection(2, BORDER),
            renderSection(4, WHITE),
            renderSection(1, BORDER),
            renderSection(8, BLACK),
        ],
        [
            renderSection(7, BLACK),
            renderSection(5, BORDER),
            renderSection(7, BLACK),
            renderSection(5, BORDER),
            renderSection(8, BLACK),
        ]
    ]

def get_frame_4_rows():
    return [
        # --------------------------
        # Forehead
        [
            renderSection(13, BLACK),
            renderSection(2, BORDER),
            renderSection(12, BLACK),
        ],
        [
            renderSection(12, BLACK),
            renderSection(1, BORDER),
            renderSection(2, DARK_YELLOW),
            renderSection(1, BORDER),
            renderSection(11, BLACK)
        ],
        [
            renderSection(11, BLACK),
            renderSection(2, BORDER),
            renderSection(1, DARK_YELLOW),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(11, BLACK)
        ],
        [
            renderSection(11, BLACK),
            renderSection(1, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(2, YELLOW),
            renderSection(2, BORDER),
            renderSection(10, BLACK)
        ],
        [
            renderSection(10, BLACK),
            renderSection(2, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(3, YELLOW),
            renderSection(1, BORDER),
            renderSection(10, BLACK),
        ],
        [
            renderSection(10, BLACK),
            renderSection(1, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(4, YELLOW),
            renderSection(1, BORDER),
            renderSection(10, BLACK),
        ],
        [
            renderSection(10, BLACK),
            renderSection(4, BORDER),
            renderSection(1, YELLOW),
            renderSection(3, BORDER),
            renderSection(9, BLACK),
        ],
        [
            renderSection(9, BLACK),
            renderSection(2, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
            renderSection(8, BLACK),
        ],
        [
            renderSection(9, BLACK),
            renderSection(2, BORDER),
            renderSection(1, WHITE),
            renderSection(1, BORDER),
            renderSection(1, WHITE),
            renderSection(1, BORDER),
            renderSection(1, WHITE),
            renderSection(1, BORDER),
            renderSection(1, WHITE),
            renderSection(1, BORDER),
            renderSection(8, BLACK),
        ],
        [
            renderSection(1, BLACK),
            renderSection(2, BORDER),
            renderSection(5, BLACK),
            renderSection(1, BLACK),
            renderSection(2, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
            renderSection(4, BLACK),
            renderSection(3, BORDER),
            renderSection(1, BLACK),
        ],
        [
            renderSection(1, BORDER),
            renderSection(2, WHITE),
            renderSection(2, BORDER),
            renderSection(4, BLACK),
            renderSection(1, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(3, BORDER),
            renderSection(1, YELLOW),
            renderSection(3, BORDER),
            renderSection(4, BLACK),
            renderSection(2, BORDER),
            renderSection(2, WHITE),
            renderSection(1, BORDER)
        ],
        [
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
            renderSection(4, BLACK),
            renderSection(2, BORDER),
            renderSection(1, DARK_YELLOW),
            renderSection(5, YELLOW),
            renderSection(1, BORDER),
            renderSection(4, BLACK),
            renderSection(1, BORDER),
            renderSection(3, WHITE),
            renderSection(1, BORDER),
        ],
        [
            renderSection(1, BORDER),
            renderSection(2, WHITE),
            renderSection(2, BORDER),
            renderSection(4, BLACK),
            renderSection(2, BORDER),
            renderSection(1, RED),
            renderSection(6, BORDER),
            renderSection(4, BLACK),
            renderSection(2, BORDER),
            renderSection(2, WHITE),
            renderSection(1, BORDER),
        ],
        [
            renderSection(1, BLACK),
            renderSection(4, BORDER),
            renderSection(4, BLACK),
            renderSection(1, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, BORDER),
            renderSection(5, RED),
            renderSection(1, BORDER),
            renderSection(4, BLACK),
            renderSection(4, BORDER),
            renderSection(1, BLACK),
        ],
        [
            renderSection(4, BLACK),
            renderSection(2, BORDER),
            renderSection(3, BLACK),
            renderSection(1, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(1, YELLOW),
            renderSection(1, BORDER),
            renderSection(3, RED),
            renderSection(2, BORDER),
            renderSection(3, BLACK),
            renderSection(2, BORDER),
            renderSection(4, BLACK),
        ],
        [
            renderSection(5, BLACK),
            renderSection(2, BORDER),
            renderSection(2, BLACK),
            renderSection(1, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(2, YELLOW),
            renderSection(3, BORDER),
            renderSection(1, YELLOW),
            renderSection(1, BORDER),
            renderSection(2, BLACK),
            renderSection(2, BORDER),
            renderSection(5, BLACK),
        ],
        [
            renderSection(6, BLACK),
            renderSection(4, BORDER),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(5, YELLOW),
            renderSection(4, BORDER),
            renderSection(6, BLACK),
        ],
        [
            renderSection(9, BLACK),
            renderSection(2, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(5, YELLOW),
            renderSection(1, BORDER),
            renderSection(9, BLACK),
        ],
        [
            renderSection(10, BLACK),
            renderSection(1, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(5, YELLOW),
            renderSection(1, BORDER),
            renderSection(9, BLACK),
        ],
        [
            renderSection(10, BLACK),
            renderSection(1, BORDER),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(4, YELLOW),
            renderSection(1, BORDER),
            renderSection(9, BLACK),
        ],
        [
            renderSection(10, BLACK),
            renderSection(2, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(4, YELLOW),
            renderSection(1, BORDER),
            renderSection(9, BLACK),
        ],
        [
            renderSection(11, BLACK),
            renderSection(1, BORDER),
            renderSection(2, MUSTARD_YELLOW),
            renderSection(3, YELLOW),
            renderSection(1, BORDER),
            renderSection(9, BLACK),
        ],
        [
            renderSection(12, BLACK),
            renderSection(2, BORDER),
            renderSection(1, MUSTARD_YELLOW),
            renderSection(3, BORDER),
            renderSection(9, BLACK),
        ],
        [
            renderSection(12, BLACK),
            renderSection(6, BORDER),
            renderSection(9, BLACK),
        ],
        [
            renderSection(12, BLACK),
            renderSection(1, BORDER),
            renderSection(4, BLACK),
            renderSection(1, BORDER),
            renderSection(9, BLACK),
        ],
        [
            renderSection(11, BLACK),
            renderSection(2, BORDER),
            renderSection(4, BLACK),
            renderSection(2, BORDER),
            renderSection(8, BLACK),
        ],
        [
            renderSection(11, BLACK),
            renderSection(1, BORDER),
            renderSection(6, BLACK),
            renderSection(1, BORDER),
            renderSection(8, BLACK),
        ],
        [
            renderSection(9, BLACK),
            renderSection(3, BORDER),
            renderSection(6, BLACK),
            renderSection(3, BORDER),
            renderSection(6, BLACK),
        ],
        [
            renderSection(7, BLACK),
            renderSection(2, BORDER),
            renderSection(3, WHITE),
            renderSection(2, BORDER),
            renderSection(3, BLACK),
            renderSection(2, BORDER),
            renderSection(3, WHITE),
            renderSection(2, BORDER),
            renderSection(3, BLACK),
        ],
        [
            renderSection(7, BLACK),
            renderSection(1, BORDER),
            renderSection(5, WHITE),
            renderSection(1, BORDER),
            renderSection(3, BLACK),
            renderSection(1, BORDER),
            renderSection(5, WHITE),
            renderSection(1, BORDER),
            renderSection(3, BLACK),
        ],
        [
            renderSection(7, BLACK),
            renderSection(6, BORDER),
            renderSection(5, BLACK),
            renderSection(6, BORDER),
            renderSection(3, BLACK),
        ]
    ]
