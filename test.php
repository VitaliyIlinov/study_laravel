<?php

require __DIR__ . '/vendor/autoload.php';


class User
{
    public $id;
    public $name;
    public $friends = [];

    public function __construct($id, string $name, array $friends)
    {
        $this->id = $id;
        $this->name = $name;
        $this->friends = $friends;
    }
}

function copyObjectOld(User &$user): User
{
    $newFriends = [];
    static $clonedObjectHash = [];
    $object = clone $user;
    foreach ($object->friends as $key => $friend) {
        $hash = spl_object_hash($friend);
        if ($friend->friends !== [] && !in_array($hash, $clonedObjectHash)) {
            /*
             * or instead of "spl_object_hash" - unset link
             * unset($user->friends[$key]);
             * $newFriends[] = copyObject($friend);
             * $user->friends[$key]=$friend;
             */
            $clonedObjectHash[] = $hash;
            $newFriends[] = copyObjectOld($friend);
        } else {
            $newFriends[] = clone $friend;
        }
    }
    $object->friends = $newFriends;
    return $object;
}

function copyObject1(User $user): User
{
    $newFriends = [];
    $oldFriends = $user->friends;
    $user->friends = [];
    $object = clone $user;

    foreach ($oldFriends as $key => $friend) {
        $newFriends[$key] = copyObject1($friend);
    }
    $user->friends = $oldFriends;
    $object->friends = $newFriends;
    return $object;
}

function copyObject2(User $user): User
{
    $arr = [];
    $object = clone $user;
    $object->friends = [];
    foreach ($user->friends as $key => $friend) {
        if ($friend->friends !== []) {
            unset($user->friends[$key]);
            $arr[] = copyObject2($friend);
            $user->friends[$key] = $friend;
        } else {
            $arr[] = clone $friend;
        }
    }

    $object->friends = $arr;
    return $object;
}

function copyObject3(User $user): User
{
    $newFriends = [];
    $object = clone $user;
    foreach ($object->friends as $key => $friend) {
        $newFriends[] = copyObject(clone $friend);
    }
    $object->friends = $newFriends;
    return $object;
}

function copyObject(User $user): User
{
    $newFriends = [];
    $object = clone $user;
    foreach ($object->friends as $key => $friend) {
        unset($user->friends[$key]);
        $newFriends[] = copyObject($friend);
        $user->friends[$key] = $friend;
    }
    $object->friends = $newFriends;
    return $object;
}


function copyObjectByHash1(User $user, array $clonedObject = []): User
{
    $newFriends = [];
    $object = clone $user;
    foreach ($object->friends as $key => $friend) {
        $hash = spl_object_hash($friend);
        if (!in_array($hash, $clonedObject)) {
            $clonedObject[] = $hash;
            $newFriends[] = copyObjectByHash($friend, $clonedObject);
        }
    }
    $object->friends = $newFriends;
    return $object;
}

function copyObjectByHash(User $user, array $clonedObjects = []): User
{
    $objectHash = spl_object_hash($user);

    if (isset($clonedObjects[$objectHash])) {
        return $clonedObjects[$objectHash];
    }

    $newFriends = [];
    $newObject = clone $user;
    $clonedObjects[$objectHash] = $newObject;

    foreach ($newObject->friends as $friend) {
        $newFriends[] = copyObjectByHash($friend, $clonedObjects);
    }

    $newObject->friends = $newFriends;
    return $newObject;
}

$vova = new User(2, 'Vova', []);
$denis = new User(1, 'Denis', []);
$vova->friends = [$denis];
$denis->friends = [$vova];

$user2 = copyObjectByHash($denis);

$user2->name = "Yury";
$user2->friends[0]->name = "Not Vova";
$denis->friends[0]->name = "Not denise";


exit;


$friend1 = new User(4, 'Vetal', []);
$friend2 = new User(3, 'Vetal1', []);
$friend = new User(2, 'Vova', [$friend1, $friend2]);

$user1 = new User(1, 'Denis', [$friend]);

$user2 = copyObjectByHash($user1);
$user2->name = "Yury";
$user2->friends[0]->name = "Not Vova";

$user2->friends[0]->friends[0]->name = "Not Vetal";

var_dump($user1->name); // Denis
var_dump($user2->name); // Yury
// $user1 = denis - vova - Vetal1 vetal
var_dump($user1->friends[0]->name); // Vova
var_dump($user2->friends[0]->name); // Not Vova
var_dump($user2->friends[0]->friends[0]->name); // Not Vetal
var_dump($user1->friends[0]->friends[0]->name); // Vetal
