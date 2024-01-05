pageextension 50100 VendorCard extends "Vendor Card"
{
    layout{
        addlast(General)
        {
            field("Vendor Rating"; Rec."Vendor Rating") 
            { 
                ToolTip = 'The rating of the vendor.';
                ApplicationArea = All;
            }
        }
    }    
}
