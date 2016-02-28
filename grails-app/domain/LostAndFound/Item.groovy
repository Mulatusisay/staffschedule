package LostAndFound

class Item {
    String itemCode
    String itemName
    String color
    String size
    String shape
    String brand
    Integer quantity
    String description
    String category
    String value
    String status

    String toString () {
        "${itemName}, ${itemCode}"
    }

    static belongsTo =[foundItem: FoundItem,claimedItemCode : ClaimLostItem ]
    //static mapping = {
    //   formula itmeCode='itemName+'
  //  }
   // ClaimLostItem lostItems
    //FoundItem foundItems
    //static  belongsTo = [ lostItems : ClaimLostItem]
    //static blongsTo=ClaimLostItem

   // ClaimLostItem lostItemBelongsTo
   // static mapping = {
   //     itemCode formula: 'QUANTITY + QUANTITY '
    //}
    static constraints = {

        itemCode()
        itemName()
        foundItem(blank : false, nullable: true)
        claimedItemCode(blank : false, nullable : true)
        category(inList: ["Electronics","Cloth","Checked in baggage","Hand Bag","Jewelry","Baby stroller","wheelchair","Other"])
        status(inList: ["New","Used","Packed","", "Old","Good Status","Other"])
        quantity()
        color()
        size(inList: ["Small","Medium","Large","Other"])
        shape(inList: ["Round","Rectangle","Other"])
        brand()
        description( widget: 'textarea')
        value()



    }
}
