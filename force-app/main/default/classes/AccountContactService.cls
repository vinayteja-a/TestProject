public with sharing class AccountContactService {
    
    // Method to get related contacts for a given Account Id
    public static List<Contact> getContactsByAccountId(Id accountId) {
        if (accountId == null) {
            throw new AuraHandledException('Account Id cannot be null');
        }

        // Query related contacts
        List<Contact> contactList = [
            SELECT Id, FirstName, LastName, Email, Phone 
            FROM Contact 
            WHERE AccountId = :accountId
        ];

        return contactList;
    }
}
