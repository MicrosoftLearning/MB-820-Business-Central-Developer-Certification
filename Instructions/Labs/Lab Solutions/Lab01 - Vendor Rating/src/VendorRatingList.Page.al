page 50101 "VendorRating List"
{
    ApplicationArea = All;
    Caption = 'VendorRating List';
    PageType = List;
    SourceTable = VendorRating;
    UsageCategory = Lists;
    CardPageId = "VendorRating Card";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Rating Code field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Rating Description field.';
                }
            }
        }
    }
}
