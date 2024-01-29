pageextension 50121 CustomerCardExt extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field(CheckDate; CheckDate)
            {
                Caption = 'Check Date';
                ApplicationArea = All;
                trigger OnValidate()
                var
                    TypeHelper: Codeunit "Type Helper";
                begin
                    if TypeHelper.IsLeapYear(CheckDate) then
                        IsLeapYear := IsLeapYear::Yes
                    else
                        IsLeapYear := IsLeapYear::No;
                end;
            }
            field(IsLeapYear; IsLeapYear)
            {
                Caption = 'Is Leap Year';
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
    var
        CheckDate: Date;
        IsLeapYear: Option ,Yes,No;
}
