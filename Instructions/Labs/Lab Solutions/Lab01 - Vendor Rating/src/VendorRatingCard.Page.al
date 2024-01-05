page 50100 "VendorRating Card"
{
    ApplicationArea = All;
    Caption = 'VendorRating Card';
    PageType = Card;
    SourceTable = VendorRating;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
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
