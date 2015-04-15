/*
 * Author: Ruthberg
 * Toggles the range card screen on/off
 *
 * Arguments:
 * Nothing
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call ace_atragmx_fnc_toggle_range_card
 *
 * Public: No
 */
#include "script_component.hpp"

#define _dsp (uiNamespace getVariable "ATragMX_Display")

if (ctrlVisible 5006) then
{
    false call FUNC(show_range_card);
    true call FUNC(show_main_page);
} else
{
    false call FUNC(show_main_page);
    true call FUNC(show_range_card);
    
    ctrlSetFocus (_dsp displayCtrl 5001);
    
    [] call FUNC(calculate_range_card);
    [] call FUNC(update_range_card);
};