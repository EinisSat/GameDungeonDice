using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class UIManager : MonoBehaviour
{
    [SerializeField] private TMP_Text diceOneText, diceTwoText;
	public List<int> results = new List<int>();

	private void OnEnable()
	{
		//DieRoller.OnDieRolled += SetText;
		Dice.OnDiceResult += SetText;
	}
	private void OnDisable()
	{
		//DieRoller.OnDieRolled -= SetText;
		Dice.OnDiceResult -= SetText;
	}
	//private void OnDisable()
	//{
	//	Dice.OnDiceResult -= SetText;
	//}
	private void SetText(int diceIndex, int diceResult)
	{
		if (diceIndex == 0)
		{
			diceOneText.SetText($"Pirmas kauliukas i�rideno {diceResult}");
		}
		else
		{
			diceTwoText.SetText($"Antras kauliukas i�rideno {diceResult}");
		}
	}
}
