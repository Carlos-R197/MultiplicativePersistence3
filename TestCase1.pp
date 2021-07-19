{$mode objfpc}{$H+}

unit TestCase1;

interface

uses FPCUnit, TestRegistry, TestUtils, Persistence;

type
  TTestCase1 = class(TTestCase)
  private
    FPersistence: TPersistence;
  protected
    procedure SetUp; override;
	procedure TearDown; override;
  published
    procedure FirstTest;
	procedure SecondTest;
	procedure ThirdTest;
	procedure FourthTest;
	procedure FifthTest;
	procedure SixthTest;
  end;
  
implementation  
  
procedure TTestCase1.SetUp;
begin
  FPersistence:= TPersistence.Create;
end;

procedure TTestCase1.TearDown;
begin
  FPersistence.Free;
end;

procedure TTestCase1.FirstTest;
begin
  AssertEquals(0, FPersistence.Persistence(8));
end;

procedure TTestCase1.SecondTest;
begin
  AssertEquals(3, FPersistence.Persistence(86));
end;

procedure TTestCase1.ThirdTest;
begin
  AssertEquals(5, FPersistence.Persistence(796));
end;

procedure TTestCase1.FourthTest;
begin
  AssertEquals(2, FPersistence.Persistence(-126));
end;

procedure TTestCase1.FifthTest;
begin
  AssertEquals(2, FPersistence.Persistence(-5533144));
end;

procedure TTestCase1.SixthTest;
begin
  AssertEquals(3, FPersistence.Persistence(995571));
end;

initialization
  RegisterTest(TTestCase1);
end.