from __future__ import unicode_literals

from prompt_toolkit.filters import ViInsertMode
from prompt_toolkit.key_binding.key_processor import KeyPress
from prompt_toolkit.keys import Keys
from pygments.token import Token

from ptpython.layout import CompletionVisualisation

__all__ = ("configure",)


def configure(repl):
    repl.show_signature = True
    repl.show_docstring = True
    repl.show_meta_enter_message = True
    repl.completion_visualisation = CompletionVisualisation.POP_UP
    repl.completion_menu_scroll_offset = 0
    repl.show_line_numbers = False
    repl.show_status_bar = False
    repl.show_sidebar_help = True
    repl.swap_light_and_dark = True
    repl.highlight_matching_parenthesis = True
    repl.wrap_lines = True
    repl.enable_mouse_support = False
    repl.complete_while_typing = True
    repl.enable_fuzzy_completion = True
    repl.enable_dictionary_completion = False
    repl.vi_mode = True
    repl.paste_mode = True
    repl.prompt_style = "classic"
    repl.insert_blank_line_after_output = False
    repl.enable_history_search = True
    repl.enable_auto_suggest = False
    repl.enable_open_in_editor = True
    repl.enable_system_bindings = True
    repl.confirm_exit = True
    repl.enable_input_validation = True
    repl.use_code_colorscheme("paraiso-dark")
    repl.color_depth = "DEPTH_24_BIT"
    repl.enable_syntax_highlighting = True
    repl.min_brightness = 0.5
    repl.max_brightness = 0.9
    repl.title = "Python REPL"


_custom_ui_colorscheme = {
    # Blue prompt.
    Token.Layout.Prompt: "bg:#eeeeff #000000 bold",
    # Make the status toolbar red.
    Token.Toolbar.Status: "bg:#ff0000 #000000",
}
