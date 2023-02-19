<?php

declare(strict_types=1);

namespace App\Http\Controllers;

use App\Models\TodoList;
use Google\Client;
use Google_Service_Sheets;
use Google_Service_Sheets_ValueRange;
use Illuminate\Http\Request;
use Revolution\Google\Sheets\Facades\Sheets;

final class TestController extends Controller
{
    private $spreadsheetId = '1Jji5XP82JdaFn-Mf7fo7Zg0ELuWOE_BroREgispvK40';

    private function rep()
    {
//        $values = Sheets::spreadsheet($this->spreadsheetId)->range('A1:B2')->all();
        $values = Sheets::spreadsheet('Sheet 1')->get();
        $values = Sheets::spreadsheet($this->spreadsheetId)->range('A4')->append([['3', 'name3', 'mail3']]);
//        $rows = Sheets::sheet('Sheet 1')->get();
        dd($values);
    }

    public function test(Request $request)
    {
        $list = ToDoList::all();
        return view('todo', [
            'list' => $list,
        ]);
    }

    private function byApi()
    {
        $client = new Client();
        $client->setApplicationName("testsheet");
        $client->setDeveloperKey('AIzaSyCnFv9ApeVsWLmp2uoMAfbvqn_yEEeGFvA');
//        $client->setAuthConfig(storage_path('credentials.json'));
//        $client->addScope(Sheets::SPREADSHEETS);
        $service = new Google_Service_Sheets($client);

        $spreadsheetId = '1Jji5XP82JdaFn-Mf7fo7Zg0ELuWOE_BroREgispvK40';
        $range = 'A1:A3';
        $response = $service->spreadsheets_values->get($spreadsheetId, $range);
        $values = $response->getValues();
        if (empty($values)) {
            print "No data found.\n";
        } else {
            print "Name, Major:\n";
            var_dump($values);
        }
    }

    private function byOAUTH()
    {
        $client = new Client();
        $client->setApplicationName("testsheet");
        $client->setDeveloperKey('AIzaSyCnFv9ApeVsWLmp2uoMAfbvqn_yEEeGFvA');

        $r = '{"web":{"client_id":"197087316622-bml1n6h8dj2r7nrug7huljgmftdsrq9e.apps.googleusercontent.com","project_id":"testsheet-347108","auth_uri":"https://accounts.google.com/o/oauth2/auth","token_uri":"https://oauth2.googleapis.com/token","auth_provider_x509_cert_url":"https://www.googleapis.com/oauth2/v1/certs","client_secret":"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"}}';
        $r1 = json_decode($r, true);
        $client->setAuthConfig(storage_path('credentials.json'));

        $service = new Google_Service_Sheets($client);

        $spreadsheetId = '1Jji5XP82JdaFn-Mf7fo7Zg0ELuWOE_BroREgispvK40';
        $range = 'A1:A3';
        $response = $service->spreadsheets_values->get($spreadsheetId, $range);
        $values = $response->getValues();

        if (empty($values)) {
            print "No data found.\n";
        } else {
            print "Name, Major:\n";
            var_dump($values);
        }
    }

    private function buServiceAccount()
    {
        $client = new Client();
        $client->setApplicationName("testsheet");
        $client->setAuthConfig(storage_path('credentials.json'));
        $client->addScope([Google_Service_Sheets::DRIVE, Google_Service_Sheets::SPREADSHEETS]);
        $service = new Google_Service_Sheets($client);

        $spreadsheet = new Sheets\Spreadsheet([
            'properties' => [
                'title' => 'some_test',
            ],
        ]);

        $spreadsheet = $service->spreadsheets->create($spreadsheet, [
            'fields' => 'spreadsheetId',
        ]);
        printf("Spreadsheet ID: %s\n", $spreadsheet->spreadsheetId);
    }

    private function change()
    {
        $client = new Client();
        $client->setApplicationName("testsheet");
//        $client->setDeveloperKey('AIzaSyCnFv9ApeVsWLmp2uoMAfbvqn_yEEeGFvA');
        $client->setAuthConfig(storage_path('credentials.json'));
        $client->addScope(Google_Service_Sheets::SPREADSHEETS);
        $service = new Google_Service_Sheets($client);
        $range = 'A1';
        $spreadsheetId = '1Jji5XP82JdaFn-Mf7fo7Zg0ELuWOE_BroREgispvK40';

//        $response = $service->spreadsheets_values->get($spreadsheetId, $range);
//        $values = $response->getValues();

        $values = [[2324242]];

        $body = new Google_Service_Sheets_ValueRange([
            'values' => $values,
        ]);
        $params = [
            'valueInputOption' => 'USER_ENTERED',
            'includeValuesInResponse' => true,
        ];
        $result = $service->spreadsheets_values->update($spreadsheetId, $range, $body, $params ?? []);
        var_dump($result->getUpdatedData());
    }
}
