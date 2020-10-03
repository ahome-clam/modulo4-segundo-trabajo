Feature: Item
  @Item
  Scenario: As a user I want to create an item that represent a task

    Given I have authentication to todo.ly
    # Consumiendo el request para crear item
    When I send POST request 'api/items.json' with json
    """
    {
       "Content":"Adding a new item"
    }
    """
    # Verificar el response
    Then I expected the response code 200
    And I expected the response body is equal
    """
    {
        "Id": "EXCLUDE",
        "Content":"Adding a new item",
        "ItemType": 1,
        "Checked": false,
        "ProjectId": null,
        "ParentId": null,
        "Path": "",
        "Collapsed": false,
        "DateString": null,
        "DateStringPriority": 0,
        "DueDate": "",
        "Recurrence": null,
        "ItemOrder": null,
        "Priority": 4,
        "LastSyncedDateTime": "EXCLUDE",
        "Children": [],
        "DueDateTime": null,
        "CreatedDate": "EXCLUDE",
        "LastCheckedDate": null,
        "LastUpdatedDate": "EXCLUDE",
        "Deleted": false,
        "Notes": "",
        "InHistory": false,
        "SyncClientCreationId": null,
        "DueTimeSpecified": true,
        "OwnerId": 676067
    }
    """

    And I get the property value 'Id' and save on ID_ITEM
    And I get the property value 'Content' and save on NAME_ITEM

    When I send PUT request 'api/items/ID_ITEM.json' with json
    """
    {
       "Checked":true
    }
    """

    # Verificar el response

    Then I expected the response code 200
    And I expected the response body is equal
    """
    {
        "Id": ID_ITEM,
        "Content": NAME_ITEM,
        "ItemType": 1,
        "Checked": true,
        "ProjectId": null,
        "ParentId": null,
        "Path": "",
        "Collapsed": false,
        "DateString": null,
        "DateStringPriority": 0,
        "DueDate": "EXCLUDE",
        "Recurrence": null,
        "ItemOrder": null,
        "Priority": 4,
        "LastSyncedDateTime": "EXCLUDE",
        "Children": [],
        "DueDateTime": "EXCLUDE",
        "CreatedDate": "EXCLUDE",
        "LastCheckedDate": "EXCLUDE",
        "LastUpdatedDate": "EXCLUDE",
        "Deleted": false,
        "Notes": "",
        "InHistory": "EXCLUDE",
        "SyncClientCreationId": "EXCLUDE",
        "DueTimeSpecified": true,
        "OwnerId": 676067
    }
    """
    When I send DELETE request 'api/items/ID_ITEM.json' with json
    """

    """
    Then I expected the response code 200
    And I expected the response body is equal
    """
    {
        "Id": ID_ITEM,
        "Content": NAME_ITEM,
        "ItemType": 1,
        "Checked": true,
        "ProjectId": null,
        "ParentId": null,
        "Path": "",
        "Collapsed": false,
        "DateString": null,
        "DateStringPriority": 0,
        "DueDate": "",
        "Recurrence": null,
        "ItemOrder": null,
        "Priority": 4,
        "LastSyncedDateTime": "EXCLUDE",
        "Children": [],
        "DueDateTime": null,
        "CreatedDate": "EXCLUDE",
        "LastCheckedDate": "EXCLUDE",
        "LastUpdatedDate": "EXCLUDE",
        "Deleted": true,
        "Notes": "",
        "InHistory": "EXCLUDE",
        "SyncClientCreationId": null,
        "DueTimeSpecified": true,
        "OwnerId": 676067
    }
    """

    When I send GET request 'api/items/ID_ITEM.json' with json
    """
    """
    Then I expected the response code 200
    And I expected the response body is equal
    """
    {
        "Id": ID_ITEM,
        "Content": NAME_ITEM,
        "ItemType": 1,
        "Checked": true,
        "ProjectId": null,
        "ParentId": null,
        "Path": "",
        "Collapsed": false,
        "DateString": null,
        "DateStringPriority": 0,
        "DueDate": "",
        "Recurrence": null,
        "ItemOrder": null,
        "Priority": 4,
        "LastSyncedDateTime": "EXCLUDE",
        "Children": [],
        "DueDateTime": null,
        "CreatedDate": "EXCLUDE",
        "LastCheckedDate": "EXCLUDE",
        "LastUpdatedDate": "EXCLUDE",
        "Deleted": true,
        "Notes": "",
        "InHistory": "EXCLUDE",
        "SyncClientCreationId": null,
        "DueTimeSpecified": true,
        "OwnerId": 676067
    }
    """
